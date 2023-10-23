from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from app_tuyen_sinh_django.utils.enums.otp_type import OtpType
from app_tuyen_sinh_django.utils.enums.sex import Sex
from app_tuyen_sinh_django.utils.enums.user_type import UserType
from app_tuyen_sinh_django.utils.enums.auth_type import AuthType

# Create your models here.


class UserInfo(models.Model):
    USER_TYPE_CHOICE = [(ut.value, ut.user_type) for ut in UserType]
    SEX_CHOICE = [(sex.value, sex.sex) for sex in Sex]

    username = models.CharField(
        max_length=30,
        null=True,
        blank=True,
    )
    user_type = models.SmallIntegerField(
        choices=USER_TYPE_CHOICE,
        default=UserType.OTHER.value,
        null=False,
        blank=False,
    )
    sex = models.SmallIntegerField(
        choices=SEX_CHOICE,
        default=Sex.OTHER.value,
        null=False,
        blank=False,
    )
    phone = models.CharField(
        max_length=11,
        null=True,
        blank=True,
    )
    birth_day = models.DateField(
        null=True,
        blank=True,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True, auto_now=True)
    avatar_url = models.TextField(null=True)
    address = models.CharField(
        null=True,
        max_length=100,
    )


class Otp(models.Model):

    OTP_CHOICE = [(otp.value, otp.value) for otp in OtpType]
    otp = models.CharField(null=False, blank=False, max_length=6)
    otp_type = models.SmallIntegerField(
        choices=OTP_CHOICE,
        null=False,
        blank=False,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True, auto_now=True)
    expried_at = models.DateTimeField()


class UserManager(BaseUserManager):

    def create_user(
        self,
        email,
        password,
        auth_type: AuthType = None,
        auth_id=None,
        user_info=None,
        auth_otp=None,
    ):
        user = self.model(
            email=self.normalize_email(email),
            password=password,
            auth_type=auth_type.value,
            auth_id=auth_id,
            user_info=user_info,
            auth_otp=auth_otp,
        )
        user.set_password(password)
        user.save(using=self._db)

        return user

    def create_superuser(self, email, password, auth_type, auth_id, user_info):
        user = self.model(
            email=self.normalize_email(email),
            password=password,
            auth_type=auth_type,
            auth_id=auth_id,
            user_info=user_info,
        )
        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)

        return user


class AuthUser(AbstractBaseUser):
    AUTH_TYPE_CHOICE = [(auth.value, auth.auth_type) for auth in AuthType]

    email = models.CharField(
        null=False,
        max_length=100,
        unique=True,
    )
    password = models.CharField(
        null=True,
        max_length=256,
    )
    auth_type = models.SmallIntegerField(
        choices=AUTH_TYPE_CHOICE,
        default=AuthType.EMAIL.value,
        null=False,
        auto_created=True,
        blank=False,
    )
    auth_id = models.CharField(null=True, max_length=128, unique=True)
    last_login = models.DateTimeField(null=True, auto_now_add=True)
    is_admin = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    user_info = models.OneToOneField(
        UserInfo,
        null=True,
        related_name="FK_USER_INFO",
        on_delete=models.SET_NULL,
    )
    auth_otp = models.OneToOneField(
        Otp,
        null=True,
        related_name="FK_AUTH_OTP",
        on_delete=models.SET_NULL,
    )
    password_otp = models.OneToOneField(
        Otp,
        null=True,
        related_name="FK_PASSWORD_OTP",
        on_delete=models.SET_NULL,
    )

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    objects = UserManager()

    def __str__(self):
        return (self.email if self.email is not None else "{}({})".format(
            AuthType.from_id(self.auth_type), self.auth_id))

    def has_perm(self, perm, obj=None):
        return self.is_admin

    def has_module_perms(self, app_label):
        return True

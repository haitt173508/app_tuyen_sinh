from rest_framework import serializers
from app_tuyen_sinh_django.utils.enums.auth_type import AuthType
from app_tuyen_sinh_django.utils.models.base_exception import BaseGeneralException

from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned
from app_tuyen_sinh_django.utils.validators.validators import validate_auth_phone, validate_not_empty
from users.models import AuthUser, UserInfo


class UserInfoSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserInfo
        fields = '__all__'


class CreateUserInfoSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserInfo
        exclude = ['created_at', 'updated_at']

    @property
    def user_id(self):
        return self.initial_data.get('id')

    def validate(self, attrs):
        validate_not_empty(
            'Tên người dùng',
            attrs.get('username'),
            key_field='username',
        )

        auth_user = AuthUser.objects.get(user_info__id=self.user_id)
        if AuthType.from_id(auth_user.auth_type) is AuthType.EMAIL:
            validate_auth_phone(
                'Số điện thoại',
                attrs.get('phone'),
                key_field='phone',
            )
        try:
            user_info = UserInfo.objects.get(phone=attrs['phone'])
            # if user_info.id != int(self.user_id):
            #     print(user_info.id == self.user_id)
            #     raise BaseGeneralException(
            #         'Số điện thoại đã được đăng ký với hệ thống')
        except MultipleObjectsReturned:
            raise BaseGeneralException(
                'Số điện thoại đã được đăng ký với hệ thống')
        except ObjectDoesNotExist:
            pass

        return super().validate(attrs)

    @classmethod
    def create(cls, data):
        serializer = cls(data=data)
        try:
            if data.get('id') is None:
                raise BaseGeneralException('Trường id không được để trống')
            UserInfo.objects.get(id=serializer.user_id)
        except ObjectDoesNotExist:
            raise BaseGeneralException('Không tìm thấy người dùng')

        if serializer.is_valid(raise_exception=True):
            UserInfo.objects.filter(
                id=serializer.user_id).update(**serializer.validated_data, )
            return UserInfo.objects.get(id=serializer.user_id)

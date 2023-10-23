from datetime import timedelta
import json
from django.utils import timezone
import random
from django.contrib.auth import authenticate, get_user_model
from django.core.exceptions import ObjectDoesNotExist
from rest_framework.request import Request
from rest_framework.views import APIView
from app_tuyen_sinh_django.manager.authentication_backend import JWTAuth

from app_tuyen_sinh_django.utils.enums.auth_type import AuthType
from app_tuyen_sinh_django.utils.enums.error_type import ErrorType
from app_tuyen_sinh_django.utils.enums.otp_type import OtpType
from app_tuyen_sinh_django.utils.enums.recieve_otp_type import RecieveType
from app_tuyen_sinh_django.utils.functions.auth_validator import auth_valdiator
from app_tuyen_sinh_django.utils.functions.send_otp import send_otp_via_email
from app_tuyen_sinh_django.utils.functions.transaction_wrapper import \
    transaction_wrapper
from app_tuyen_sinh_django.utils.models.base_exception import \
    BaseGeneralException
from app_tuyen_sinh_django.utils.models.response_model import ResponseModel
from app_tuyen_sinh_django.utils.serializers.auth_session_serializer import \
    AuthSessionSerializer
from app_tuyen_sinh_django.utils.serializers.auth_user_serializer import \
    AuthUserSerializer
from app_tuyen_sinh_django.utils.serializers.token_obtain_pair_serializer import \
    CustomTokenObtainPairSerializer
from app_tuyen_sinh_django.utils.validators.validators import validate_not_empty
from oauth.models import AuthSession
from users.models import AuthUser, Otp, UserInfo
from rest_framework_simplejwt.tokens import AccessToken, RefreshToken

# Create your views here.


class AuthTokenView(APIView):

    @staticmethod
    def generate_token(auth_user: AuthUser):
        new_token = CustomTokenObtainPairSerializer.get_token(auth_user)
        access_token = str(new_token.access_token)
        auth_session = AuthSession(
            access_token=access_token,
            auth_user=auth_user,
        )
        return auth_session

    @transaction_wrapper
    def post(self, request: Request, *arg, **kwargs):
        user_id = request.data['user_id']
        if user_id is not None:
            user = AuthUser.objects.get(user_info__id=user_id)
            try:
                return ResponseModel(data=AuthSessionSerializer(
                    __class__.generate_token(user)).data, )
            except Exception as e:
                return ResponseModel.from_exception(e)


class RegisterOneSignalView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        user, token = JWTAuth().authenticate(request)
        if user is not None and isinstance(token, AccessToken):
            data = request.data
            validate_not_empty(
                'one_signal_id',
                data.get('one_signal_id'),
                'one_signal_id',
            )
            validate_not_empty(
                'device_uid',
                data.get('device_uid'),
                'device_uid',
            )
            token_str = token.token.decode('utf-8')
            AuthSession.objects.filter(access_token=token_str).update(
                device_id=data.get('device_id'),
                fcm_player_id=data.get('one_signal_id'),
            )
            return ResponseModel()
        else:
            raise token


class LoginView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        data = request.data
        default_auth_value = AuthType.EMAIL.value
        auth_type = AuthType.from_id(
            data.get(
                'auth_type',
                default_auth_value,
            ))
        try:

            if auth_type is AuthType.EMAIL:
                validate_not_empty('Tài khoản', data.get('email'), 'email')
                validate_not_empty(
                    'Mật khẩu',
                    data.get('password'),
                    'password',
                )

                user = self._login_with_email_and_password(
                    email=data['email'],
                    password=data['password'],
                )

                if not user.is_active:
                    return ResponseModel.from_error_type(
                        ErrorType.USER_INACTIVATE, )

            token = AuthTokenView.generate_token(user)
            token.save()
            return ResponseModel(data={
                'token': AuthSessionSerializer(token).data,
                'user': AuthUserSerializer(user).data,
            }, )
        except Exception as e:
            return ResponseModel.from_exception(e)

    def _login_with_email_and_password(self, email, password) -> AuthUser:

        try:
            auth_user = get_user_model().objects.get(email=email)

            if not auth_user.check_password(password):
                raise ErrorType.WRONG_EMAIL_OR_PASSWORD

        except ObjectDoesNotExist:
            raise ErrorType.WRONG_EMAIL_OR_PASSWORD

        if not auth_user.is_active:
            raise BaseGeneralException(
                'Người dùng chưa kích hoạt',
                code='USER_INACTIVATE',
                data=json.dumps({
                    'auth_id': auth_user.id,
                }),
            )

        if auth_user is not None:
            return auth_user
        else:
            raise ErrorType.WRONG_EMAIL_OR_PASSWORD


class RegisterView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        data = request.data
        default_auth_value = AuthType.EMAIL.value
        auth_type = AuthType.from_id(
            data.get(
                'auth_type',
                default_auth_value,
            ))
        if auth_type is AuthType.EMAIL:
            try:
                email = data.get('email')
                password = data.get('password')
                if email is None or not email:
                    raise BaseGeneralException('Email không được để trống')
                if password is None or not password:
                    raise BaseGeneralException('Mật khẩu không được để trống')
                if AuthUser.objects.get(email=email):
                    raise BaseGeneralException('Email đã được đăng ký')
            except ObjectDoesNotExist:
                otp = Otp.objects.create(
                    otp_type=OtpType.AUTH.value,
                    otp=random.randint(100000, 999999),
                    expried_at=timezone.now() + timedelta(minutes=5),
                )
                user_info = UserInfo.objects.create()
                new_user = get_user_model().objects.create_user(
                    email=email,
                    password=password,
                    auth_type=AuthType.EMAIL,
                    auth_otp=otp,
                    user_info=user_info,
                )
                auth_user = AuthUserSerializer(new_user)
                send_otp_via_email(email, otp)
                return ResponseModel(data=auth_user.data)


class OtpView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        data = request.data

        if data.get('auth_id') is None:
            raise BaseGeneralException('auth_id không được để trống')
        if data.get('otp_type') is None or OtpType.from_id(
                data['otp_type']) is None:
            raise BaseGeneralException('otp_type không hợp lệ')

        try:
            auth_user = AuthUser.objects.get(id=data['auth_id'])
        except ObjectDoesNotExist:
            raise BaseGeneralException('Không tìm thấy người dùng')

        otp_type = OtpType.from_id(data['otp_type'])

        if otp_type is OtpType.AUTH and auth_user.is_active:
            raise BaseGeneralException('Người dùng đã xác thực rồi')

        path = request.get_full_path()

        if 'confirm' in path:
            return self._confirm(data, auth_user, otp_type)
        elif 'send' in path:
            return __class__.send(auth_user, otp_type)

    def _confirm(self, data, auth_user, otp_type):
        if data.get('otp') is None:
            raise BaseGeneralException('Chưa nhập otp')

        otp = auth_user.auth_otp if otp_type is OtpType.AUTH else auth_user.password_otp

        if otp is None:
            raise BaseGeneralException('Chưa khởi tạo otp')
        if timezone.now() > otp.expried_at:
            raise BaseGeneralException('Otp đã hết hạn')
        if otp.otp != data['otp']:
            raise BaseGeneralException('Sai otp')

        if otp_type is OtpType.AUTH:
            auth_user.is_active = True
        # elif otp_type is OtpType.PASSWORD:
        #     auth_user.password_otp = None

        auth_user.save()
        return ResponseModel(message='Xác thực thành công')

    @classmethod
    def send(cls, auth_user, otp_type):
        otp = auth_user.auth_otp if otp_type is OtpType.AUTH else auth_user.password_otp

        if otp is None:
            otp = Otp.objects.create(
                otp_type=OtpType.AUTH.value,
                otp=random.randint(100000, 999999),
                expried_at=timezone.now() + timedelta(minutes=5),
            )
            otp.save()
            if otp_type is OtpType.AUTH:
                new_var = AuthUser.objects.filter(id=auth_user.id)
                new_var.update(auth_otp=otp, )
            if otp_type is OtpType.PASSWORD:
                AuthUser.objects.filter(id=auth_user.id).update(
                    password_otp=otp, )

        else:
            new_otp = random.randint(100000, 999999)
            Otp.objects.filter(id=otp.id).update(
                otp=new_otp,
                expried_at=timezone.now() + timedelta(minutes=5),
            )

        send_otp_via_email(auth_user.email, Otp.objects.get(id=otp.id))
        return ResponseModel(code=200)


class PasswordView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        path = request.get_full_path()
        data = request.data

        if 'input_email_or_phone' in path:

            recieve_type = RecieveType.from_id(data['recieve_type'])
            if recieve_type is None:
                raise BaseGeneralException(
                    'Phương thức nhận không hợp lệ',
                    code='Invalid recieve otp type',
                )

            if recieve_type is RecieveType.PHONE:
                raise BaseGeneralException(
                    'Phương thức Số điện thoại chưa hỗ trợ', )

            if recieve_type is RecieveType.EMAIL:
                validate_not_empty(
                    'Email',
                    data.get('email'),
                    key_field='email',
                )

            otp_type = OtpType.PASSWORD
            # if otp_type is None:
            #     raise BaseGeneralException('Loại otp không hợp lệ')

            try:
                auth_user = AuthUser.objects.get(email=data['email'])
            except ObjectDoesNotExist:
                raise BaseGeneralException(
                    'Không tìm thấy người dùng đã đăng ký Email', )

            otp = Otp.objects.create(
                otp_type=otp_type.value,
                otp=random.randint(100000, 999999),
                expried_at=timezone.now() + timedelta(minutes=5),
            )
            auth_user.password_otp = otp
            auth_user.save()
            send_otp_via_email(data['email'], otp)

            return ResponseModel(
                message='Gửi otp thành công',
                data={
                    'auth_id': auth_user.id,
                },
            )

        elif 'update_password' in path:

            if data.get('auth_id') is not None:
                try:
                    auth_user = get_user_model().objects.get(
                        id=data['auth_id'], )
                except ObjectDoesNotExist:
                    raise BaseGeneralException('Không tìm thấy người dùng')

                validate_not_empty('Otp', data.get('otp'), key_field='otp')

                otp = auth_user.password_otp

                if otp is None:
                    raise BaseGeneralException('Chưa khởi tạo otp')

                if data['otp'] != otp.otp:
                    raise BaseGeneralException('Sai otp')

                if timezone.now() > otp.expried_at:
                    raise BaseGeneralException('Otp đã hết hạn')

            else:
                auth_user, error = auth_valdiator(request)

                if auth_user is None:
                    return error

                validate_not_empty(
                    'Mật khẩu',
                    data.get('password'),
                    'password',
                )

                if not auth_user.check_password(data['password']):
                    raise BaseGeneralException('Mật khẩu cũ không chính xác')

            validate_not_empty(
                'Mật khẩu mới',
                data.get('new_password'),
                'new_password',
            )

            auth_user.set_password(data['new_password'])
            auth_user.save()
            return ResponseModel(message='Cập nhật mật khẩu thành công')


class LogoutView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        user, token = JWTAuth().authenticate(request)
        if user is not None and isinstance(token, AccessToken):
            token_str = token.token.decode('utf-8')
            try:
                AuthSession.objects.get(access_token=token_str).delete()
                return ResponseModel(message='Đăng xuất thành công')
            except ObjectDoesNotExist:
                # raise BaseGeneralException('Không tìm thấy token')
                return ResponseModel(message='Đăng xuất thành công')
        else:
            raise token

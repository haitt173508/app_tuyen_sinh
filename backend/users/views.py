import json
from rest_framework.views import APIView
from rest_framework.request import Request
from app_tuyen_sinh_django.manager.authentication_backend import JWTAuth
from app_tuyen_sinh_django.utils.functions.transaction_wrapper import transaction_wrapper
from app_tuyen_sinh_django.utils.models.response_model import (
    ResponseModel, )
from app_tuyen_sinh_django.utils.serializers.auth_user_serializer import AuthUserSerializer
from app_tuyen_sinh_django.utils.serializers.user_info_serializer import CreateUserInfoSerializer, UserInfoSerializer

from users.models import AuthUser, UserInfo

# Create your views here.


class UserView(APIView):

    def get(seft, request: Request, *args, **kwargs):
        JWT_authenticator = JWTAuth()
        user, error = JWT_authenticator.authenticate(request)
        if error is not None:
            return error
        return ResponseModel(
            data=AuthUserSerializer(user, many=True).data,
            request=request,
        )


class UpdateUserInfoView(APIView):

    @transaction_wrapper
    def post(self, request: Request):
        if request.data.get('auth_id') is None:
            JWT_authenticator = JWTAuth()
            user, error = JWT_authenticator.authenticate(request)
            if user is None and error is not None:
                return error

        requestData = request.data
        data = requestData.get('user_info')
        new_user = CreateUserInfoSerializer.create(data)
        return ResponseModel(data=UserInfoSerializer(new_user).data)
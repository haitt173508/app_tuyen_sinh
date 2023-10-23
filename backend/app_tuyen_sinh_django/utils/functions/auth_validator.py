from app_tuyen_sinh_django.manager.authentication_backend import JWTAuth
from rest_framework.request import Request

from users.models import AuthUser


def auth_valdiator(request: Request):
	user, error = JWTAuth().authenticate(request)
	return user, error
	

from rest_framework import serializers
from users.models import AuthUser


class AuthUserSerializer(serializers.ModelSerializer):

    class Meta:
        model = AuthUser
        exclude = ['password', 'auth_otp', 'password_otp']
        depth = 2

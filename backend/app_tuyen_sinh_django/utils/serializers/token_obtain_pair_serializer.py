from datetime import datetime
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.tokens import RefreshToken


class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):

    @classmethod
    def get_token(cls, user) -> RefreshToken:
        token = super().get_token(user)

        # Add custom claims
        token['created_time'] = datetime.now().microsecond
        # ...
        return token

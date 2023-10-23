from rest_framework import serializers

from oauth.models import AuthSession


class AuthSessionSerializer(serializers.ModelSerializer):

    class Meta:
        model = AuthSession
        fields = ['access_token']

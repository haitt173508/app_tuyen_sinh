from django.db import models
from users.models import AuthUser

# Create your models here.


class AuthSession(models.Model):
    access_token = models.CharField(null=False, blank=False, max_length=300)
    # expired_at = models.DateTimeField(null=False)
    device_id = models.CharField(null=True, blank=True, max_length=50)
    updated_at = models.DateTimeField(auto_now=True)
    fcm_player_id = models.CharField(null=True, blank=True, max_length=300)
    auth_user = models.ForeignKey(
        AuthUser,
        on_delete=models.CASCADE,
        related_name="FK_AUTH_USER_AUTH_SESSION",
    )

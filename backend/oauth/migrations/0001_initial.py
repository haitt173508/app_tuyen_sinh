# Generated by Django 4.2 on 2023-07-31 10:13

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name="AuthSession",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("access_token", models.CharField(max_length=300)),
                ("expired_at", models.DateTimeField()),
                ("device_id", models.CharField(max_length=50)),
                ("updated_at", models.DateTimeField(auto_now=True)),
                (
                    "auth_user",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="FK_AUTH_USER_AUTH_SESSION",
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
    ]

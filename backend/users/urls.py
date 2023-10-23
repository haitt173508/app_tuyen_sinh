from django.urls import path

from users.views import UpdateUserInfoView

urlpatterns = [
    path("update_user", UpdateUserInfoView.as_view()),
]

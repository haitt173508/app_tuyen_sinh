from django.urls import path, include

from noti.views import SendNewNoti

urlpatterns = [
    path("send_new_noti", SendNewNoti.as_view()),
]
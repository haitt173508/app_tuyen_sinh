from django.urls import path, include
from oauth.views import AuthTokenView, LoginView, LogoutView, OtpView, PasswordView, RegisterOneSignalView, RegisterView

urlpatterns = [
    path("token", AuthTokenView.as_view()),
    path("login", LoginView.as_view()),
    path("register", RegisterView.as_view()),
    path("register_one_signal_device", RegisterOneSignalView.as_view()),
    path("logout", LogoutView.as_view()),
    path(
        'otp/',
        include([
            path('confirm', OtpView.as_view()),
            path('send', OtpView.as_view()),
        ])),
    path(
        'password/',
        include([
            path('input_email_or_phone', PasswordView.as_view()),
            path('update_password', PasswordView.as_view()),
        ]),
    )
]
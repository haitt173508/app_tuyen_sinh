from django.core.mail import send_mail


def send_otp_via_email(email, otp):
    print('SEND OTP: {}'.format(otp.otp))
    # send_mail(
    #     "Subject here",
    #     "Here is the message.",
    #     "from@example.com",
    #     ["hai.ttb19@gmail.com"],
    #     fail_silently=False,
    # )


# subject = 'Email xác thực của bạn'
# message = 'Mã otp của bạn là {}'.format('124565')
# email_from = settings.EMAIL_HOST
# send_mail(
#     subject=subject,
#     message=message,
#     from_email=email_from,
#     recipient_list=[email],
# )

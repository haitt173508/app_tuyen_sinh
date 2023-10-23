from rest_framework.request import Request
from rest_framework.views import APIView

from app_tuyen_sinh_django.utils.functions.send_one_signal_noti import send_one_signal_noti
from app_tuyen_sinh_django.utils.models.response_model import ResponseModel
from oauth.models import AuthSession

# Create your views here.


class SendNewNoti(APIView):

    def post(self, request: Request):
        data = request.data
        img_url = data.get('image_url')
        title = data.get('title')
        new_id = data.get('new_id')
        player_ids = [
            session.fcm_player_id for session in AuthSession.objects.exclude(
                fcm_player_id__isnull=True, )
        ]
        print(player_ids)
        if len(player_ids) != 0:
            try:
                send_one_signal_noti(
                    image_url=img_url,
                    title=title,
                    data={"new_id": new_id},
                    player_ids=player_ids,
                )
                return ResponseModel()
            except Exception as e:
                return ResponseModel.from_exception(e)
        return ResponseModel()

from datetime import datetime
from firebase_admin import storage
from rest_framework.request import Request


class FirebaseStorageManager:

    @classmethod
    def save_avatar(cls, avatar, user_id):
        bucket = storage.bucket()
        blob = bucket.blob('avatar/{}_{}.jpg'.format(
            user_id,
            datetime.now().strftime("%Y%m%d%H%M%S"),
        ))
        blob.upload_from_file(avatar)
        blob.make_public()
        return blob.public_url

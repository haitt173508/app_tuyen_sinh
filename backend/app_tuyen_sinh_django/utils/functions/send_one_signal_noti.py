import requests
import json


def send_one_signal_noti(
    player_ids,
    image_url,
    title,
    data,
):
    url = "https://onesignal.com/api/v1/notifications"
    payload = json.dumps({
        "app_id": "cc030ce2-afcf-4ddb-a842-bedeb7c1399a",
        "include_player_ids": player_ids,
        "contents": {
            "en": title,
        },
        "ios_attachments": image_url,
        "big_picture": image_url,
        "data": data,
    })
    headers = {
        'Content-Type': 'application/json',
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    print(response.text)

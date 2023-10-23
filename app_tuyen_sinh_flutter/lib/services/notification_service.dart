import 'dart:convert';

import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalMessageNotificationService {
  static LocalMessageNotificationService? _instance;

  static const PORT_SERVER_NAME = 'port_server_name';

  factory LocalMessageNotificationService() =>
      _instance ??= LocalMessageNotificationService._();
  static const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  static const DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings();
  static final localNotification = FlutterLocalNotificationsPlugin();

  static AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel',
    'App Notification',
    importance: Importance.high,
    playSound: true,
    enableVibration: true,
    showBadge: true,
    description: 'Thông báo app tuyển sinh',
  );
  // when click notification
  static onSelectNotification(Map payloadData) {
    try {} catch (error, s) {
      catchHandler(error, s);
    }
  }

  LocalMessageNotificationService._();

  Future initService() async {
    await localNotification.initialize(
      const InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      ),
      onDidReceiveNotificationResponse: _onResponseNoti,
      onDidReceiveBackgroundNotificationResponse: _onBackgroundResponseNoti,
    );
  }

  // chạy hàm khi click vào thông báo
  _onResponseNoti(NotificationResponse noti) async {
    if (noti.notificationResponseType ==
        NotificationResponseType.selectedNotification) {
      var payload = noti.payload;
      if (payload != null) {
        var decodedPayload = jsonDecode(payload);
        onSelectNotification(decodedPayload);
        // _changePage(payload);
      }
    } else {
      try {} catch (e, s) {
        catchHandler(e, s);
      }
    }
  }

  @pragma('vm:entry-points')
  static _onBackgroundResponseNoti(
    NotificationResponse noti,
  ) async {
    print(noti.notificationResponseType);
    // if (noti.notificationResponseType ==
    //         NotificationResponseType.selectedNotificationAction &&
    //     noti.actionId == ANSWER_ACTION_ID) {
    //   var port = IsolateNameServer.lookupPortByName(PORT_SERVER_NAME);
    //   logger.log('${port.hashCode}', name: 'PORT LOG');
    //   port?.send(noti);
    // }
  }

  static Map<int, List<ActiveNotification>> mapConvIdAndListNotiId = {};

  static void showNotification(
    String title,
    String body,
    String payload,
  ) async {
    var data = jsonDecode(payload);
    // List<ActiveNotification>? activeNotifications = await localNotification
    //     .resolvePlatformSpecificImplementation<
    //         AndroidFlutterLocalNotificationsPlugin>()
    //     ?.getActiveNotifications();

    // var activeNotification = ActiveNotification(
    //   channelId: channel.id,
    //   title: title,
    //   body: body,
    //   payload: payload,
    // );

    var imageUrl = NewInfo.fromJson(data['new']).imgUrl;
    ByteArrayAndroidBitmap? bigPicture;

    if (imageUrl != null) {
      final Response response = await Dio().get(
        imageUrl,
        options: Options(
          responseType: ResponseType.bytes,
        ),
      );
      // log(response.data);
      bigPicture = ByteArrayAndroidBitmap.fromBase64String(
          base64Encode(List.from(response.data)));
    }

    await localNotification.show(
      0,
      '<b>$title</b>',
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          fullScreenIntent: true,
          styleInformation: bigPicture != null
              ? BigPictureStyleInformation(
                  bigPicture,
                  contentTitle: '<b>$title</b>',
                  htmlFormatContent: true,
                  htmlFormatContentTitle: true,
                  htmlFormatTitle: true,
                  htmlFormatSummaryText: true,
                )
              : BigTextStyleInformation(
                  title,
                  contentTitle: body,
                  htmlFormatBigText: true,
                  htmlFormatContent: true,
                  htmlFormatContentTitle: true,
                  htmlFormatTitle: true,
                  htmlFormatSummaryText: true,
                ),
          groupKey: channel.groupId,
          actions: [],
        ),
      ),
      payload: payload,
    );
  }
}

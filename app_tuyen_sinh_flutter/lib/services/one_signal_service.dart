import 'dart:developer';

import 'package:app_tuyen_sinh_flutter/main.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/test_detail_screen.dart';
import 'package:app_tuyen_sinh_flutter/services/data_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalService {
  static OneSignalService shared = OneSignalService();

  static registerOnesignal() {
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared.setAppId("ONE_SIGNAL_APP_ID");
    OneSignal.shared.setNotificationOpenedHandler(_handler);
  }

  Future<OSDeviceState?> getDeviceState() async {
    var deviceState = await OneSignal.shared.getDeviceState();
    log("OneSignal: device state: ${deviceState!.jsonRepresentation()}");
    return deviceState;
  }

  static void _handler(OSNotificationOpenedResult openedResult) {
    var newId = openedResult.notification.additionalData?['new_id'];
    if (newId != null) {
      try {
        var newInfo =
            allNewsList.firstWhere((e) => e.id.toString() == newId.toString());
        navKey.currentState!.push(AppPageRoute(
          page: TestDetailScreen(
            newInfo: newInfo,
          ),
        ));
      } catch (_) {}
    }
  }
}

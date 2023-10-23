import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/share_pref_manager.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  AuthInfo? _authInfo;

  UserProvider(AuthInfo? user);

  User? get user => _authInfo?.userInfo;

  AuthInfo? get authInfo => _authInfo;

  set authInfo(AuthInfo? authInfo) {
    _authInfo = authInfo;
    try {
      if (authInfo != null) {
        var loggedInData = SharePrefManager.instance.getLoggedInData();
        if (loggedInData != null) {
          SharePrefManager.instance.saveLoggedInData(
            loggedInData.copyWith(
              user: authInfo,
            ),
          );
        }
      } else {
        SharePrefManager.instance.clearToLogout();
      }
    } catch (e, s) {
      catchHandler(e, s);
    }
    notifyListeners();
  }
}

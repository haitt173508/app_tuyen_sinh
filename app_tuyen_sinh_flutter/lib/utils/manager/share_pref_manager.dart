import 'dart:convert';

import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefManager {
  SharePrefManager._();

  static final SharePrefManager _instance = SharePrefManager._();

  static SharePrefManager get instance => _instance;

  static const String _loginDataKey = 'login_data';
  static const String _tokenKey = 'access_token';

  late final SharedPreferences _pref;

  Future<SharedPreferences> init() async {
    _pref = await SharedPreferences.getInstance();
    return _pref;
  }

  Future<bool> saveLoggedInData(LoginResponseData data) async {
    try {
      var res = await Future.wait(
        [
          _pref.setString(_loginDataKey, json.encode(data.toJson())),
          saveAccessToken(data.token.accessToken),
        ],
      );
      return res.every((e) => e);
    } catch (e, s) {
      return catchHandler(e, s, false)!;
    }
  }

  LoginResponseData? getLoggedInData() {
    try {
      if (_pref.containsKey(_loginDataKey)) {
        return LoginResponseData.fromJson(
          json.decode(_pref.getString(_loginDataKey)!),
        );
      } else {
        return null;
      }
    } catch (e, s) {
      return catchHandler(e, s);
    }
  }

  Future<bool> saveAccessToken(String token) =>
      _pref.setString(_tokenKey, token);

  String? get getAccessToken => _pref.getString(_tokenKey);

  Future<bool> clearToLogout() {
    return _pref.clear();
  }
}

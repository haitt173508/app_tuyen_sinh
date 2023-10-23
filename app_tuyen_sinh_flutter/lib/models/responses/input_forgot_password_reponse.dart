import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';

class InputForgotPasswordResponse {
  final int authId;

  InputForgotPasswordResponse({required this.authId});

  factory InputForgotPasswordResponse.fromJson(Map json) {
    return InputForgotPasswordResponse(authId: json['auth_id']);
  }
}

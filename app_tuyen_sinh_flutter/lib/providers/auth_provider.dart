import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/auth_type.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider(this.authType);

  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController(),
      introCodeController = TextEditingController();

  final TextEditingController otpController = TextEditingController();

  final AuthType authType;

  AuthInfo? authInfo;
}

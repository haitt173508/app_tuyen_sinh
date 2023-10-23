import 'dart:convert';
import 'dart:developer';

import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/auth/screens/otp_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/auth/screens/resgister_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/main_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/password/screens/forgot_password_input_screen.dart';
import 'package:app_tuyen_sinh_flutter/providers/auth_provider.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/services/notification_service.dart';
import 'package:app_tuyen_sinh_flutter/services/one_signal_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/components/base_input_decoration.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/auth_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/otp_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/get_udid.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/show_toast.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/share_pref_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController()
    ..text = 'vandepzai111@gmail.com';
  final TextEditingController _passwordController = TextEditingController()
    ..text = '123456';

  _login() async {
    DialogManager.showLoad(context);

    var handler = await ApiService.instance.loginWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );

    if (!mounted) return;

    DialogManager.hideLoad(context);

    if (handler.code == 200) {
      await SharePrefManager.instance.saveLoggedInData(handler.responseData!);
      context.userProvider.authInfo = handler.responseData!.user;
      if (mounted) {
        await _registerOneSignalPlayerId(
            handler.responseData!.token.accessToken);
        Navigator.of(context).pushAndRemoveUntil(
          AppPageRoute(
            page: const MainScreen(),
          ),
          (route) => false,
        );
      }
    } else if (handler.code == 'USER_INACTIVATE') {
      print(handler.errors!.first.data);
      var errorData = json.decode(handler.errors!.first.data);
      _activeUser(errorData['auth_id'], _emailController.text);
    } else {
      DialogManager.showErrorDialog(context, Text(handler.message!));
    }
  }

  _activeUser(int authId, String email) async {
    DialogManager.showLoad(context);
    var res = await ApiService.instance.sendOtp(
      OtpType.auth,
      authId: authId,
    );
    if (!mounted) return;
    DialogManager.hideLoad(context);
    if (res.code == 200) {
      context.navState.push(
        AppPageRoute(
          page: OtpScreen(
            email: email,
            onConfirmOtp: (value) async {
              DialogManager.showLoad(context);
              var confirmRes = await ApiService.instance.confirmOtp(
                OtpType.auth,
                authId: authId,
                otp: value,
              );
              if (mounted) {
                DialogManager.hideLoad(context);
                if (confirmRes.code == 200) {
                  _showAuthSuccess();
                } else {
                  DialogManager.showErrorDialog(
                    context,
                    Text(confirmRes.message!),
                  );
                }
              }
            },
            onSendOtp: () async {
              DialogManager.showLoad(context);
              var res = await ApiService.instance
                  .sendOtp(OtpType.auth, authId: authId);
              if (mounted) {
                DialogManager.hideLoad(context);
              }
              return res;
            },
          ),
        ),
      );
    } else {
      DialogManager.showErrorDialog(context, Text(res.message!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Hero(
                    tag: 'logo_bk',
                    child: Image.asset(
                      AssetManager.imgLogoBk,
                      height: 180,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'TUYỂN SINH',
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            BaseTextFormField(
              controller: _emailController,
              decoration: BaseInputDecoration(
                label: const Text('Email'),
              ),
            ),
            const SizedBox(height: 20),
            BaseTextFormField(
              controller: _passwordController,
              decoration: BaseInputDecoration(
                label: const Text('Mật khẩu'),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  context.navState.push(
                    AppPageRoute(
                      page: const ForgotPasswordInputScreen(),
                    ),
                  );
                },
                child: Text(
                  'Quên mật khẩu',
                  style: TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                    color: context.theme.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            BaseElevatedButton(
              onPressed: _login,
              child: const Text('Đăng nhập'),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text: 'Bạn chưa có tài khoản \t',
                children: [
                  TextSpan(
                    text: 'đăng ký ngay',
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.navState.push(
                          AppPageRoute(
                            page: const RegisterScreen(),
                            providers: [
                              ChangeNotifierProvider(
                                create: (context) => AuthProvider(
                                  AuthType.email,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                  ),
                ],
              ),
              style: context.theme.textTheme.bodySmall?.copyWith(
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text('hoặc'),
                  ),
                ],
              ),
            ),
            OutlinedButton.icon(
              label: Image.asset(
                AssetManager.imgGoogleLogo,
                height: 40,
                width: 40,
              ),
              icon: const Text(
                'Đăng nhập bằng ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.grey[350]!),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: () {
                var res = {
                  "id": 10,
                  "title":
                      "Dự báo điểm chuẩn Đại học Bách khoa Hà Nội có nhiều thay đổi",
                  "subtitle":
                      "Ngoại trừ một số ngành “hot”, đa số điểm chuẩn theo phương thức kết quả thi tốt nghiệp THPT vào các ngành của Đại học Bách khoa Hà Nội sẽ có xu hướng giảm.",
                  "img_url":
                      'https://ts.hust.edu.vn/image/lfq0-20230319-dsc-4538.jpg/250/180',
                };
                var n = NewInfo.fromJson(res);
                LocalMessageNotificationService.showNotification(
                  n.title,
                  n.subtitle!,
                  json.encode({'new': res}),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _showAuthSuccess() {
    DialogManager.showAlertDialog(
      context,
      title: const Text(
        'Xác thực thành công',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      content: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Chúc mừng bạn đã xác thực thành công\nĐăng nhập ngay để truy cập các thông tin mới nhất !',
        ),
      ),
      actions: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: BaseElevatedButton(
          child: const Text('ĐĂNG NHẬP'),
          onPressed: () {
            context.navState.popUntil((route) => route.isFirst);
          },
        ),
      ),
    );
  }

  Future _registerOneSignalPlayerId(String token) async {
    DialogManager.showLoad(context);
    var uid = await getDeviceUid();
    var oneSignalId =
        (await OneSignalService.shared.getDeviceState())?.userId ?? '';
    log('OneSignalId: $oneSignalId');
    var res = await ApiService.instance.registerOneSignalDevice(
      oneSignalId,
      uid,
      token: token,
    );
    if (mounted) {
      DialogManager.hideLoad(context);
    }
    if (res.code != 200 && res.message != null) {
      showToast(res.message!);
    }
  }
}

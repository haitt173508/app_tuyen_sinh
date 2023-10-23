import 'package:app_tuyen_sinh_flutter/modules/auth/screens/otp_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/password/screens/update_password_screen.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/components/base_input_decoration.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/otp_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/recieve_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/validate_callback.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/validators/validator.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordInputScreen extends StatefulWidget {
  const ForgotPasswordInputScreen({super.key});

  @override
  State<ForgotPasswordInputScreen> createState() =>
      _ForgotPasswordInputScreenState();
}

class _ForgotPasswordInputScreenState extends State<ForgotPasswordInputScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? _validate({
    required RecieveType type,
  }) {
    if (Validator.validateEmpty(_emailController.text) != null &&
        Validator.validateEmpty(_phoneController.text) != null) {
      return 'Bạn cần nhập Email hoặc Số điện thoại';
    }

    if (_emailController.text.isNotEmpty && _phoneController.text.isNotEmpty) {
      return 'Chỉ được nhập Email hoặc Số điện thoại';
    }

    if (_emailController.text.isNotEmpty && type == RecieveType.email) {
      return Validator.validateEmail(_emailController.text);
    }

    if (_phoneController.text.isNotEmpty && type == RecieveType.phone) {
      return Validator.validatePhone(_phoneController.text);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Quên mật khẩu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Vui lòng cung cấp ',
                        children: [
                          TextSpan(
                            text: ' Email',
                            style: TextStyle(
                              color: context.theme.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const TextSpan(
                            text: ' hoặc',
                          ),
                          TextSpan(
                            text: ' Số điện thoại',
                            style: TextStyle(
                              color: context.theme.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '  bạn đã đăng ký với hệ thống để chúng tôi gửi mã OTP:',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    BaseTextFormField(
                      controller: _emailController,
                      validator: (_) => _validate(type: RecieveType.email),
                      decoration: BaseInputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Nhập email',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
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
                    BaseTextFormField(
                      controller: _phoneController,
                      validator: (_) => _validate(type: RecieveType.phone),
                      decoration: BaseInputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: 'Nhập số điện thoại',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: BaseElevatedButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                validateCallback(
                  _formKey,
                  _onConfirm,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _onConfirm() async {
    var email = _emailController.text.isNotEmpty ? _emailController.text : null;
    var phone = email == null ? _phoneController.text : null;
    var type = email != null ? RecieveType.email : RecieveType.phone;

    DialogManager.showLoad(context);

    var response = await ApiService.instance.inputForgotPasswordEmailOrPhone(
      type,
      phone: phone,
      email: email,
    );

    if (!mounted) return null;
    DialogManager.hideLoad(context);

    if (response.code == 200) {
      return context.navState.push(
        AppPageRoute(
          page: OtpScreen(
            email: email,
            phone: phone,
            onConfirmOtp: (value) async {
              DialogManager.showLoad(context);
              var res = await ApiService.instance.confirmOtp(
                OtpType.password,
                otp: value,
                authId: response.responseData!.authId,
              );
              if (!mounted) return;
              DialogManager.hideLoad(context);
              if (res.code == 200) {
                context.navState.push(
                  AppPageRoute(
                    page: UpdatePasswordScreen(
                      isRequiredCurrentPassowrd: false,
                      authId: response.responseData!.authId,
                      otp: value,
                    ),
                  ),
                );
              } else {
                DialogManager.showErrorDialog(
                  context,
                  Text(res.message!),
                );
              }
            },
            onSendOtp: () async {
              DialogManager.showLoad(context);
              var res = await ApiService.instance.sendOtp(
                OtpType.password,
                authId: response.responseData!.authId,
              );
              if (mounted) {
                DialogManager.hideLoad(context);
                if (res.code != 200) {
                  DialogManager.showErrorDialog(context, Text(res.message!));
                }
              }
              return res;
            },
          ),
        ),
      );
    } else {
      DialogManager.showErrorDialog(
        context,
        Text(response.message!),
      );
    }
  }
}

import 'package:app_tuyen_sinh_flutter/modules/auth/screens/otp_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/auth/screens/update_account_info_screen.dart';
import 'package:app_tuyen_sinh_flutter/providers/auth_provider.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/otp_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/validate_callback.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/validators/validator.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/column_label_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final AuthProvider _authProvider;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _authProvider = context.read<AuthProvider>();
  }

  TextEditingController get _emailController => _authProvider.emailController;
  TextEditingController get _passwordController =>
      _authProvider.passwordController;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Đăng ký'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                child: Hero(
                  tag: 'logo_bk',
                  child: Image.asset(
                    AssetManager.imgLogoBk,
                    height: 150,
                  ),
                ),
              ),
              ColumnLabelTextField(
                label: const Text('Email'),
                validator: Validator.validateEmail,
                controller: _authProvider.emailController,
                prefixIcon: const Icon(Icons.email),
              ),
              ColumnLabelTextField(
                label: const Text('Mật khẩu'),
                validator: Validator.validatePassword,
                controller: _authProvider.passwordController,
                prefixIcon: const Icon(Icons.key),
                obscureText: true,
              ),
              ColumnLabelTextField(
                label: const Text('Nhập lại mật khẩu'),
                validator: (value) => Validator.validateConfirmPassword(
                  value,
                  _passwordController.text,
                ),
                controller: _authProvider.confirmPasswordController,
                prefixIcon: const Icon(Icons.key),
                obscureText: true,
              ),
              ColumnLabelTextField(
                label: const Text('Mã giới thiệu (Không bắt buộc)'),
                controller: _authProvider.introCodeController,
                prefixIcon: const Icon(Icons.ad_units),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: BaseElevatedButton(
                  width: null,
                  height: 36,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Tiếp tục'),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 22,
                      )
                    ],
                  ),
                  onPressed: () {
                    validateCallback(_formKey, _register);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _register() async {
    DialogManager.showLoad(context);

    var res = await ApiService.instance.register(
      email: _emailController.text,
      password: _passwordController.text,
    );
    if (!mounted) return null;
    DialogManager.hideLoad(context);
    if (res.code == 200) {
      _authProvider.authInfo = res.responseData!;
      context.navState.push(
        AppPageRoute(
          page: OtpScreen(
            email: _emailController.text,
            onConfirmOtp: (String value) async {
              DialogManager.showLoad(context);
              var res = await ApiService.instance.confirmOtp(
                OtpType.auth,
                otp: value,
                authId: _authProvider.authInfo!.id,
              );
              if (!mounted) return;
              DialogManager.hideLoad(context);
              if (res.code == 200) {
                context.navState.push(
                  AppPageRoute(
                    page: const UpdateAccountInfoScreen(),
                    providers: [
                      ChangeNotifierProvider.value(value: _authProvider),
                    ],
                  ),
                );
              } else {
                DialogManager.showErrorDialog(context, Text(res.message!));
              }
            },
            onSendOtp: () async {
              DialogManager.showLoad(context);
              var res = await ApiService.instance.sendOtp(
                OtpType.auth,
                authId: _authProvider.authInfo!.id,
              );
              if (mounted) {
                DialogManager.hideLoad(context);
                if (res.code != 200) {
                  DialogManager.showErrorDialog(
                    context,
                    Text(res.message!),
                  );
                }
              }
              return res;
            },
          ),
          providers: [
            ChangeNotifierProvider.value(value: _authProvider),
          ],
        ),
      );
    } else {
      DialogManager.showErrorDialog(
        context,
        Text(res.message!),
      );
    }
  }
}

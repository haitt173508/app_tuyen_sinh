import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/validate_callback.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/validators/validator.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/column_label_textfield.dart';
import 'package:flutter/material.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({
    super.key,
    this.isRequiredCurrentPassowrd = true,
    this.authId,
    this.otp,
  });

  final bool isRequiredCurrentPassowrd;
  final int? authId;
  final String? otp;

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  final TextEditingController _passwordController = TextEditingController(),
      _newPasswordController = TextEditingController(),
      _confirmNewPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Cập nhật mật khẩu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Vui lòng nhập đầy đủ các trường sau và nhấn ',
                        children: [
                          TextSpan(
                            text: 'Xác nhận',
                            style: TextStyle(
                              color: context.theme.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const TextSpan(
                            text: ' để tiếp tục.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (widget.isRequiredCurrentPassowrd)
                      ColumnLabelTextField(
                        label: const Text('Mật khẩu hiện tại'),
                        hintText: 'Nhập mật khẩu hiện tại',
                        controller: _passwordController,
                        obscureText: true,
                        prefixIcon: const Icon(Icons.key),
                      ),
                    ColumnLabelTextField(
                      label: const Text('Mật khẩu mới'),
                      hintText: 'Nhập mật khẩu mới',
                      controller: _newPasswordController,
                      validator: Validator.validatePassword,
                      obscureText: true,
                      prefixIcon: const Icon(Icons.key),
                    ),
                    ColumnLabelTextField(
                      label: const Text('Xác nhận mật khẩu'),
                      hintText: 'Nhập lại mật khẩu mới',
                      controller: _confirmNewPasswordController,
                      validator: (value) => Validator.validateConfirmPassword(
                        value,
                        _newPasswordController.text,
                      ),
                      obscureText: true,
                      prefixIcon: const Icon(Icons.key),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
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
    DialogManager.showLoad(context);
    var res = await ApiService.instance.updatePassword(
      _newPasswordController.text,
      oldPassword:
          widget.isRequiredCurrentPassowrd ? _passwordController.text : null,
      authId: widget.authId,
      otp: widget.otp,
    );

    if (!mounted) return null;
    DialogManager.hideLoad(context);
    if (res.code == 200) {
      _showUpdatePasswordSuccess();
    } else {
      DialogManager.showErrorDialog(
        context,
        Text(res.message!),
      );
    }
  }

  _showUpdatePasswordSuccess() {
    DialogManager.showAlertDialog(
      context,
      title: const Text(
        'Cập nhật mật khẩu thành công',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      content: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Chúc mừng bạn đã cập nhật mật khẩu thành công\nĐăng nhập ngay để truy cập các thông tin mới nhất !',
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
}

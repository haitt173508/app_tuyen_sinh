// ignore_for_file: use_build_context_synchronously

import 'package:app_tuyen_sinh_flutter/modules/auth/screens/login_screen.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Cài đặt'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingTitle(
                  title: 'Thiết lập tài khoản',
                ),
                const SettingAccountItem(
                  leading: Icon(Icons.key),
                  setting: 'Đổi mật khẩu',
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
                SettingAccountItem(
                  leading: const Icon(Icons.delete),
                  setting: 'Xóa tài khoản',
                  textColor: context.theme.primaryColor,
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            color: Colors.grey.withOpacity(0.3),
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingTitle(
                  title: 'Cài đặt thông báo',
                ),
                CheckBoxSetting(
                  onChanged: (value) {},
                  setting: const Text('Thông báo các tin tức mới nhất'),
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
                CheckBoxSetting(
                  onChanged: (value) {},
                  setting: const Text('Thông báo các bài thi ĐGNL mới nhất'),
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
                CheckBoxSetting(
                  onChanged: (value) {},
                  setting: const Text('Thông báo khi thay đổi điểm'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: BaseElevatedButton(
              child: const Text('Đăng xuất'),
              onPressed: () {
                DialogManager.showConfirmDialog(
                  context,
                  const Text('Bạn có chắc muốn đăng xuất'),
                  onConfirm: () async {
                    DialogManager.showLoad(context);
                    var res = await ApiService.instance.logout();
                    DialogManager.hideLoad(context);
                    if (res.code == 200) {
                      context.userProvider.authInfo = null;
                      context.navState.pushAndRemoveUntil(
                        AppPageRoute(
                          page: const LoginScreen(),
                        ),
                        (_) => false,
                      );
                    } else {
                      DialogManager.showErrorDialog(
                        context,
                        Text(res.message!),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CheckBoxSetting extends StatefulWidget {
  const CheckBoxSetting({
    super.key,
    required this.setting,
    this.initValue = true,
    required this.onChanged,
  });

  final Widget setting;
  final bool initValue;
  final ValueChanged<bool> onChanged;

  @override
  State<CheckBoxSetting> createState() => _CheckBoxSettingState();
}

class _CheckBoxSettingState extends State<CheckBoxSetting> {
  late bool _check;

  @override
  void initState() {
    super.initState();
    _check = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _check,
      title: widget.setting,
      visualDensity: const VisualDensity(horizontal: -3, vertical: -3),
      contentPadding: EdgeInsets.zero,
      onChanged: (value) {
        setState(() {
          if (value != null) {
            _check = value;
          }
        });
      },
    );
  }
}

class SettingAccountItem extends StatelessWidget {
  const SettingAccountItem({
    super.key,
    required this.leading,
    required this.setting,
    this.textColor,
  });

  final Widget leading;
  final String setting;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            IconTheme(
              data: IconThemeData(color: context.theme.primaryColor),
              child: leading,
            ),
            const SizedBox(width: 12),
            Text(
              setting,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingTitle extends StatelessWidget {
  const SettingTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          height: 24 / 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

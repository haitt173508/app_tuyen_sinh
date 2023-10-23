import 'package:app_tuyen_sinh_flutter/models/area.dart';
import 'package:app_tuyen_sinh_flutter/models/new_category.dart';
import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/models/school.dart';
import 'package:app_tuyen_sinh_flutter/providers/auth_provider.dart';
import 'package:app_tuyen_sinh_flutter/providers/user_provider.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/sex.dart';
import 'package:app_tuyen_sinh_flutter/utils/enums/user_type.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/datetime_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/pick_datetime.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/validate_callback.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/validators/validator.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/camera_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/column_label_textfield.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/colunm_label_chip_textfield.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateAccountInfoScreen extends StatefulWidget {
  const UpdateAccountInfoScreen({super.key});

  @override
  State<UpdateAccountInfoScreen> createState() =>
      _UpdateAccountInfoScreenState();
}

class _UpdateAccountInfoScreenState extends State<UpdateAccountInfoScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _userTypeController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _birthDayController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  late final UserProvider _userProvider;
  AuthProvider? _authProvider;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _userProvider = context.userProvider;
    if (_userProvider.authInfo == null) {
      _authProvider = context.read<AuthProvider>();
    }
    _usernameController.text = _user.username ?? '';
    _userTypeController.text = _user.userType.toString();
    _birthDayController.text = _user.birthDay?.toDmyString() ?? '';
    _phoneController.text = _user.phone ?? '';
    _addressController.text = _user.address ?? '';
    _sexController.text = _user.sex.toString();
  }

  AuthInfo get _authInfo => _userProvider.authInfo ?? _authProvider!.authInfo!;
  User get _user => _authInfo.userInfo;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Cập nhật thông tin'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetManager.imgBannerBackground),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: const [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              AssetManager.imgNoAvatar,
                            ),
                          ),
                          CameraButton(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ColumnLabelTextField(
                            label: const Text('Tên người dùng'),
                            controller: _usernameController,
                            validator: (p0) => Validator.validateEmpty(
                              p0,
                              'Tên người dùng',
                            ),
                            prefixIcon: const Icon(Icons.person),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ColumnLabelTextField(
                                  wrapper: (child) {
                                    return BasePopupMenuButton(
                                      onSelected: (value) {
                                        _user.userType = value;
                                        _userTypeController.text =
                                            value.toString();
                                      },
                                      items: UserType.values,
                                      initValue: _user.userType,
                                      child: child,
                                    );
                                  },
                                  label: const Text('Bạn là'),
                                  controller: _userTypeController,
                                  readOnly: true,
                                  prefixIcon: const Icon(Icons.person),
                                  suffixIcon:
                                      const Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: ColumnLabelTextField(
                                  label: const Text('Ngày sinh'),
                                  validator: (p0) => Validator.validateEmpty(
                                    p0,
                                    'Ngày sinh',
                                  ),
                                  controller: _birthDayController,
                                  readOnly: true,
                                  prefixIcon: const Icon(Icons.calendar_month),
                                  onTap: () async {
                                    _user.birthDay = await pickDateTime(
                                      context,
                                      lastDate: DateTime.now(),
                                      initDate: _user.birthDay ??
                                          DateTime.now().subtract(
                                            const Duration(days: 1),
                                          ),
                                    );
                                    _birthDayController.text =
                                        _user.birthDay?.toDmyString() ?? '';
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ColumnLabelTextField(
                                  wrapper: (child) {
                                    return BasePopupMenuButton(
                                      onSelected: (value) {
                                        _user.sex = value;
                                        _sexController.text = value.toString();
                                      },
                                      items: Sex.values,
                                      initValue: _user.sex,
                                      child: child,
                                    );
                                  },
                                  label: const Text('Giới tính'),
                                  controller: _sexController,
                                  readOnly: true,
                                  prefixIcon:
                                      const Icon(Icons.swipe_down_alt_outlined),
                                  suffixIcon:
                                      const Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: ColumnLabelTextField(
                                  label: const Text('Số điện thoại'),
                                  controller: _phoneController,
                                  validator: Validator.validatePhone,
                                  prefixIcon: const Icon(Icons.phone),
                                ),
                              ),
                            ],
                          ),
                          ColumnLabelTextField(
                            label: const Text('Địa chỉ'),
                            validator: Validator.validateEmpty,
                            controller: _addressController,
                            prefixIcon: const Icon(Icons.house),
                          ),
                          ColumnLabelChipTextField(
                            label: const Text('Danh mục tin tức bạn quan tâm'),
                            items: newCategory,
                            bottomSheetLabel: 'Danh mục tin tức',
                          ),
                          ColumnLabelChipTextField(
                            label: const Text('Lĩnh vực bạn quan tâm'),
                            items: area,
                            bottomSheetLabel: 'Lĩnh vực',
                          ),
                          ColumnLabelChipTextField(
                            label: const Text('Khoa viện đào tạo bạn quan tâm'),
                            items: school,
                            bottomSheetLabel: 'Trường đại học',
                          ),
                          ColumnLabelChipTextField(
                            label: const Text('Ngành đào tạo bạn quan tâm'),
                            items: area,
                            bottomSheetLabel: 'Ngành đào tạo',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: BaseElevatedButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                validateCallback(_formKey, _update);
              },
            ),
          ),
        ],
      ),
    );
  }

  _update() async {
    _user
      ..username = _usernameController.text
      ..address = _addressController.text
      ..phone = _phoneController.text;

    DialogManager.showLoad(context);
    var res = await ApiService.instance.updateUserInfo(
      _user,
      authId: _authProvider != null ? _authInfo.id : null,
    );
    if (!mounted) return;
    DialogManager.hideLoad(context);

    if (res.code == 200) {
      _userProvider.authInfo = _authInfo.copyWith(userInfo: res.responseData);
      DialogManager.showAlertDialog(
        context,
        title: const Text(
          'Cập nhật thông tin thành công',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        content: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Chúc mừng bạn đã cập nhật thông tin thành công\nĐăng nhập ngay để truy cập các thông tin mới nhất !',
          ),
        ),
        actions: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: BaseElevatedButton(
            child: const Text('XÁC NHẬN'),
            onPressed: () {
              context.navState.popUntil((route) => route.isFirst);
            },
          ),
        ),
      );
    } else {
      DialogManager.showErrorDialog(context, Text(res.message!));
    }
  }
}

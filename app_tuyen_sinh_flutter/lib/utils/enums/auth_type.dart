import 'package:app_tuyen_sinh_flutter/utils/extensions/enum_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/mixins/enum_id_mixin.dart';

enum AuthType with EnumIdMixin {
  email(1, 'Email'),
  google(2, 'Google'),
  mircosoft(3, 'Microsoft');

  const AuthType(this.id, this.name);

  @override
  final int id;
  @override
  final String name;

  static AuthType fromId(id) {
    return AuthType.values.fromId(id) as AuthType;
  }
}

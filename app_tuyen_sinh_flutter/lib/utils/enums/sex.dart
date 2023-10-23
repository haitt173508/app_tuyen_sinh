import 'package:app_tuyen_sinh_flutter/utils/extensions/enum_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/mixins/enum_id_mixin.dart';

enum Sex with EnumIdMixin {
  male(0, 'Nam'),
  female(1, 'Nữ'),
  unknown(2, 'Không xác định');

  const Sex(this.id, this.name);

  @override
  final int id;
  @override
  final String name;

  static Sex fromId(id) {
    return Sex.values.fromId(id) as Sex;
  }
}

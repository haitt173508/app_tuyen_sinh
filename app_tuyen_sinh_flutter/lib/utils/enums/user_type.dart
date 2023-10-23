import 'package:app_tuyen_sinh_flutter/utils/extensions/enum_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/mixins/enum_id_mixin.dart';

enum UserType with EnumIdMixin {
  student(0, "Học sinh"),
  parent(1, "Phụ huynh"),
  pupil(2, "Sinh viên"),
  teacher(3, "Giáo viên"),
  freelancer(4, "Thí sinh tự do"),
  other(5, "Khác");

  const UserType(this.id, this.name);

  @override
  final int id;
  @override
  final String name;

  static UserType fromId(id) {
    return UserType.values.fromId(id) as UserType;
  }
}

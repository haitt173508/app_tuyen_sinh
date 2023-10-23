import 'package:app_tuyen_sinh_flutter/utils/mixins/enum_id_mixin.dart';

extension EnumById<T extends EnumIdMixin> on Iterable<T> {
  EnumIdMixin fromId(dynamic id) {
    return firstWhere((e) => e.id.toString() == id.toString());
  }
}

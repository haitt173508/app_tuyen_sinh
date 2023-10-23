import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String toDmyString() => DateFormat('dd-MM-yyyy').format(this);
  String toYmdString() => DateFormat('yyyy-MM-dd').format(this);
}

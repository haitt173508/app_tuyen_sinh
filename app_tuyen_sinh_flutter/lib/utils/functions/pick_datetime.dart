import 'package:flutter/material.dart';

Future<DateTime?> pickDateTime(
  BuildContext context, {
  DateTime? initDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  return await showDatePicker(
    context: context,
    initialDate: initDate ?? DateTime.now(),
    firstDate: firstDate ?? DateTime(1850, 1, 1),
    lastDate: lastDate ?? DateTime(2100, 12, 31),
  );
}

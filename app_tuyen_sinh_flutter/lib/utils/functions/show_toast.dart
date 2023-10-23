import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(
  String msg, {
  Color? color,
  Toast? toast,
  Color? textColor,
}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: color ?? Colors.grey.shade600,
    textColor: textColor,
    gravity: ToastGravity.BOTTOM,
    toastLength: toast ?? Toast.LENGTH_LONG,
  );
}

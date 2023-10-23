import 'package:flutter/material.dart';

validateCallback(GlobalKey<FormState> key, Function() callback) {
  if (key.currentState?.validate() != true) return;
  callback();
}

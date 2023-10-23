import 'package:flutter/services.dart';
import 'package:flutter_udid/flutter_udid.dart';

Future<String> getDeviceUid() async {
  String udid;
  try {
    udid = await FlutterUdid.udid;
  } on PlatformException {
    udid = 'Failed to get UDID.';
  }
  return udid;
}

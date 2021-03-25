import 'package:device_info/device_info.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' show Platform;

Future<String> deviceID() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isIOS) {
    IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    return iosDeviceInfo.identifierForVendor; // unique ID on iOS
  } else {
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    return androidDeviceInfo.androidId; // unique ID on Android
  }
}

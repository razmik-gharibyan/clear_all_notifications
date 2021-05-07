import 'dart:async';

import 'package:flutter/services.dart';

class ClearAllNotifications {
  static const MethodChannel _channel = const MethodChannel('clear_all_notifications');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> get clear async {
    await _channel.invokeMethod('clear');
  }
}

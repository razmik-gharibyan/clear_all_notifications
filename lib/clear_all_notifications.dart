import 'dart:async';

import 'package:flutter/services.dart';

class ClearAllNotifications {
  static const MethodChannel _channel = const MethodChannel('clear_all_notifications');

  static Future<void> clear() async {
    await _channel.invokeMethod('clear');
  }
}

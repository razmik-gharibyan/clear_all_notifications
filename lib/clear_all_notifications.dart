import 'dart:async';

import 'package:flutter/services.dart';

class ClearAllNotifications {
  static const MethodChannel _channel = const MethodChannel('clear_all_notifications');

  static Future<void> get clear async {
    try {
      await _channel.invokeMethod('clear');
    } catch (e) {
      throw Exception('Cannot clear notifications');
    }
  }
}

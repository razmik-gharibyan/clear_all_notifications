import 'package:flutter/material.dart';
import 'dart:async';

import 'package:clear_all_notifications/clear_all_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    initClearNotificationsState();
  }

  Future<void> initClearNotificationsState() async {
    ClearAllNotifications.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clear all notifications plugin'),
        ),
        body: Center(
          child: Text('Simple plugin to clear all active notifications'),
        ),
      ),
    );
  }
}

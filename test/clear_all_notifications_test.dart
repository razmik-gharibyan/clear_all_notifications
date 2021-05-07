import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:clear_all_notifications/clear_all_notifications.dart';

void main() {
  const MethodChannel channel = MethodChannel('clear_all_notifications');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ClearAllNotifications.platformVersion, '42');
  });
}

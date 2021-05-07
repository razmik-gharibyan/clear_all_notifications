import Flutter
import UIKit
import UserNotifications

public class SwiftClearAllNotificationsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "clear_all_notifications", binaryMessenger: registrar.messenger())
    let instance = SwiftClearAllNotificationsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method.elementsEqual("clear")) {
      channelMethodClearAllNotifications(result: result)
    }
    result("iOS " + UIDevice.current.systemVersion)
  }

  private func channelMethodClearAllNotifications(result: @escaping FlutterResult) {
    if #available(iOS 10.0, *) {
      UIApplication.shared.applicationIconBadgeNumber = 0
      let center = UNUserNotificationCenter.current()
      center.removeAllDeliveredNotifications()
      center.removeAllPendingNotificationRequests()
      result(true)
      return
    } else {
      // Fallback on earlier versions
    }

    result(false)
  }
}

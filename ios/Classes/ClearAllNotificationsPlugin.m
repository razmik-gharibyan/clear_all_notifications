#import "ClearAllNotificationsPlugin.h"
#if __has_include(<clear_all_notifications/clear_all_notifications-Swift.h>)
#import <clear_all_notifications/clear_all_notifications-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "clear_all_notifications-Swift.h"
#endif

@implementation ClearAllNotificationsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftClearAllNotificationsPlugin registerWithRegistrar:registrar];
}
@end

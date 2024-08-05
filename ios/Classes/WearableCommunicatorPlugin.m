#import "WearableCommunicatorPlugin.h"
#if __has_include(<wearableCommunicator/wearableCommunicator-Swift.h>)
#import <wearableCommunicator/wearableCommunicator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wearableCommunicator-Swift.h"
#endif

@implementation WearableCommunicatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    if (@available(iOS 9.0, *)) {
        [SwiftWearableCommunicatorPlugin registerWithRegistrar:registrar];
    } else {
        // Fallback on earlier versions
    }
}
@end

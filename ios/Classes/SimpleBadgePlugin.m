#import "SimpleBadgePlugin.h"
#if __has_include(<simpleBadge/simpleBadge-Swift.h>)
#import <simpleBadge/simpleBadge-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simpleBadge-Swift.h"
#endif

@implementation SimpleBadgePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleBadgePlugin registerWithRegistrar:registrar];
}
@end

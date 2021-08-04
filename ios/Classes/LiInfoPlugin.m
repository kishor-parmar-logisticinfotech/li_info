#import "LiInfoPlugin.h"
#if __has_include(<li_info/li_info-Swift.h>)
#import <li_info/li_info-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "li_info-Swift.h"
#endif

@implementation LiInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLiInfoPlugin registerWithRegistrar:registrar];
}
@end

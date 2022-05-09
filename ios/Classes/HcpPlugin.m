#import "HcpPlugin.h"
#if __has_include(<hcp_plugin/hcp_plugin-Swift.h>)
#import <hcp_plugin/hcp_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hcp_plugin-Swift.h"
#endif

@implementation HcpPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHcpPlugin registerWithRegistrar:registrar];
}
@end

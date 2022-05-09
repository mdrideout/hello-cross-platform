import './hcp_stub.dart' // Stub implementation
    if (dart.library.io) './hcp_mobile.dart' // mobile implementation (dart:io)
    if (dart.library.html) './hcp_web.dart'; // web implementation (dart:html)

abstract class HcpInterface {
  /// Functions required by all platforms
  Future<String?> getPlatformGreeting();
  Future<String?> getPlatformVersion();

  // Return the correct implementation (must be implemented on hcp_stub.dart, hcp_mobile.dart, and hcp_web.dart)
  factory HcpInterface() => hcpImplementation();
}

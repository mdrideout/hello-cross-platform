import 'package:flutter/services.dart';

import 'hcp_interface.dart';

// Return this platform implementation
HcpInterface hcpImplementation() => HcpMobile();

class HcpMobile implements HcpInterface {
  // Create platform channel
  static const _channel = MethodChannel('hcp_plugin');

  @override
  Future<String?> getPlatformGreeting() async {
    try {
      final String? version = await _channel.invokeMethod('getPlatformGreeting');
      return version;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<String?> getPlatformVersion() async {
    try {
      final String? version = await _channel.invokeMethod('getPlatformVersion');
      return version;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

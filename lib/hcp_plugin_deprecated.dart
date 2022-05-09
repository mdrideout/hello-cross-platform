
import 'dart:async';

import 'package:flutter/services.dart';

class HcpPlugin {
  static const MethodChannel _channel = MethodChannel('hcp_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

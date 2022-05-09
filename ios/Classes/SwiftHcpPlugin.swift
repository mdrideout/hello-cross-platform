import Flutter
import UIKit

public class SwiftHcpPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "hcp_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftHcpPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let callMethod: String = call.method;
      
      switch callMethod {
        case "getPlatformVersion":
          result("iOS " + UIDevice.current.systemVersion)
          
        case "getPlatformGreeting":
          result("Hello World from iOS")
          
        default: result(FlutterMethodNotImplemented)
      }
      
  }
}

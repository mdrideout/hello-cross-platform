import 'hcp_interface.dart';

// Return this platform implementation
HcpInterface hcpImplementation() => HcpWeb();

class HcpWeb implements HcpInterface {
  @override
  Future<String?> getPlatformGreeting() async {
    return "TODO: Implement platform specific interop for this.";
  }

  @override
  Future<String?> getPlatformVersion() async {
    return "TODO: Create web function for this.";
  }
}

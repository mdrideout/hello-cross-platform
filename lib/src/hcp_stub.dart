import 'hcp_interface.dart';

// Return this platform implementation
HcpInterface hcpImplementation() => HcpStub();

class HcpStub implements HcpInterface {
  @override
  Future<String?> getPlatformGreeting() async {
    throw UnimplementedError();
  }

  @override
  Future<String?> getPlatformVersion() async {
    throw UnimplementedError();
  }
}

import 'src/hcp_interface.dart';

/// Create instance of our platform interface class
HcpInterface _hcpInterface = HcpInterface();

/// Allow external use of the functions within this class
Future<String?> getPlatformGreeting() => _hcpInterface.getPlatformGreeting();

Future<String?> getPlatformVersion() => _hcpInterface.getPlatformVersion();

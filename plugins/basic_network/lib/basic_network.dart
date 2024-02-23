
import 'basic_network_platform_interface.dart';

class BasicNetwork {
  Future<String?> getPlatformVersion() {
    return BasicNetworkPlatform.instance.getPlatformVersion();
  }
}

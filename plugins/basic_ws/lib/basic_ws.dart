
import 'basic_ws_platform_interface.dart';

class BasicWs {
  Future<String?> getPlatformVersion() {
    return BasicWsPlatform.instance.getPlatformVersion();
  }
}

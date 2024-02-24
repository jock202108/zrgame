
import 'ob_com_login_platform_interface.dart';

class ObComLogin {
  Future<String?> getPlatformVersion() {
    return ObComLoginPlatform.instance.getPlatformVersion();
  }
}

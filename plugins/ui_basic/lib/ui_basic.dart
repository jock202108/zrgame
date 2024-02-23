
import 'ui_basic_platform_interface.dart';

class UiBasic {
  Future<String?> getPlatformVersion() {
    return UiBasicPlatform.instance.getPlatformVersion();
  }
}

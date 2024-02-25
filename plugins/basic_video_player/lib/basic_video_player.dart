
import 'basic_video_player_platform_interface.dart';

class BasicVideoPlayer {
  Future<String?> getPlatformVersion() {
    return BasicVideoPlayerPlatform.instance.getPlatformVersion();
  }
}

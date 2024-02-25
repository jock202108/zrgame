import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'basic_video_player_method_channel.dart';

abstract class BasicVideoPlayerPlatform extends PlatformInterface {
  /// Constructs a BasicVideoPlayerPlatform.
  BasicVideoPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static BasicVideoPlayerPlatform _instance = MethodChannelBasicVideoPlayer();

  /// The default instance of [BasicVideoPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelBasicVideoPlayer].
  static BasicVideoPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BasicVideoPlayerPlatform] when
  /// they register themselves.
  static set instance(BasicVideoPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

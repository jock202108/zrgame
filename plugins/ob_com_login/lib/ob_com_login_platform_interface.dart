import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ob_com_login_method_channel.dart';

abstract class ObComLoginPlatform extends PlatformInterface {
  /// Constructs a ObComLoginPlatform.
  ObComLoginPlatform() : super(token: _token);

  static final Object _token = Object();

  static ObComLoginPlatform _instance = MethodChannelObComLogin();

  /// The default instance of [ObComLoginPlatform] to use.
  ///
  /// Defaults to [MethodChannelObComLogin].
  static ObComLoginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ObComLoginPlatform] when
  /// they register themselves.
  static set instance(ObComLoginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

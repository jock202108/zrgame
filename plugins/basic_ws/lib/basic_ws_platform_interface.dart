import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'basic_ws_method_channel.dart';

abstract class BasicWsPlatform extends PlatformInterface {
  /// Constructs a BasicWsPlatform.
  BasicWsPlatform() : super(token: _token);

  static final Object _token = Object();

  static BasicWsPlatform _instance = MethodChannelBasicWs();

  /// The default instance of [BasicWsPlatform] to use.
  ///
  /// Defaults to [MethodChannelBasicWs].
  static BasicWsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BasicWsPlatform] when
  /// they register themselves.
  static set instance(BasicWsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

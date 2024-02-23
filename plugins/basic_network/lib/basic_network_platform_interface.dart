import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'basic_network_method_channel.dart';

abstract class BasicNetworkPlatform extends PlatformInterface {
  /// Constructs a BasicNetworkPlatform.
  BasicNetworkPlatform() : super(token: _token);

  static final Object _token = Object();

  static BasicNetworkPlatform _instance = MethodChannelBasicNetwork();

  /// The default instance of [BasicNetworkPlatform] to use.
  ///
  /// Defaults to [MethodChannelBasicNetwork].
  static BasicNetworkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BasicNetworkPlatform] when
  /// they register themselves.
  static set instance(BasicNetworkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

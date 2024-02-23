import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ui_basic_method_channel.dart';

abstract class UiBasicPlatform extends PlatformInterface {
  /// Constructs a UiBasicPlatform.
  UiBasicPlatform() : super(token: _token);

  static final Object _token = Object();

  static UiBasicPlatform _instance = MethodChannelUiBasic();

  /// The default instance of [UiBasicPlatform] to use.
  ///
  /// Defaults to [MethodChannelUiBasic].
  static UiBasicPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UiBasicPlatform] when
  /// they register themselves.
  static set instance(UiBasicPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

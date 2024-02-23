import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ui_basic_platform_interface.dart';

/// An implementation of [UiBasicPlatform] that uses method channels.
class MethodChannelUiBasic extends UiBasicPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ui_basic');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

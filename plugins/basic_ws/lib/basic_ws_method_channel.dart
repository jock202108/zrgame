import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'basic_ws_platform_interface.dart';

/// An implementation of [BasicWsPlatform] that uses method channels.
class MethodChannelBasicWs extends BasicWsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('basic_ws');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

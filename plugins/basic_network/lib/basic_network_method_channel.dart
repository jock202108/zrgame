import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'basic_network_platform_interface.dart';

/// An implementation of [BasicNetworkPlatform] that uses method channels.
class MethodChannelBasicNetwork extends BasicNetworkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('basic_network');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

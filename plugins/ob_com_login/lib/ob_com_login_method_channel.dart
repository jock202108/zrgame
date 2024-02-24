import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ob_com_login_platform_interface.dart';

/// An implementation of [ObComLoginPlatform] that uses method channels.
class MethodChannelObComLogin extends ObComLoginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ob_com_login');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

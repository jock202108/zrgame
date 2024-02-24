import 'package:flutter_test/flutter_test.dart';
import 'package:ob_com_login/ob_com_login.dart';
import 'package:ob_com_login/ob_com_login_platform_interface.dart';
import 'package:ob_com_login/ob_com_login_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockObComLoginPlatform
    with MockPlatformInterfaceMixin
    implements ObComLoginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ObComLoginPlatform initialPlatform = ObComLoginPlatform.instance;

  test('$MethodChannelObComLogin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelObComLogin>());
  });

  test('getPlatformVersion', () async {
    ObComLogin obComLoginPlugin = ObComLogin();
    MockObComLoginPlatform fakePlatform = MockObComLoginPlatform();
    ObComLoginPlatform.instance = fakePlatform;

    expect(await obComLoginPlugin.getPlatformVersion(), '42');
  });
}

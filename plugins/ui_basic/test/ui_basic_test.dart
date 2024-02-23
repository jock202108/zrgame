import 'package:flutter_test/flutter_test.dart';
import 'package:ui_basic/ui_basic.dart';
import 'package:ui_basic/ui_basic_platform_interface.dart';
import 'package:ui_basic/ui_basic_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUiBasicPlatform
    with MockPlatformInterfaceMixin
    implements UiBasicPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UiBasicPlatform initialPlatform = UiBasicPlatform.instance;

  test('$MethodChannelUiBasic is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUiBasic>());
  });

  test('getPlatformVersion', () async {
    UiBasic uiBasicPlugin = UiBasic();
    MockUiBasicPlatform fakePlatform = MockUiBasicPlatform();
    UiBasicPlatform.instance = fakePlatform;

    expect(await uiBasicPlugin.getPlatformVersion(), '42');
  });
}

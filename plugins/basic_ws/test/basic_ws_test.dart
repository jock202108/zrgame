import 'package:flutter_test/flutter_test.dart';
import 'package:basic_ws/basic_ws.dart';
import 'package:basic_ws/basic_ws_platform_interface.dart';
import 'package:basic_ws/basic_ws_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBasicWsPlatform
    with MockPlatformInterfaceMixin
    implements BasicWsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BasicWsPlatform initialPlatform = BasicWsPlatform.instance;

  test('$MethodChannelBasicWs is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBasicWs>());
  });

  test('getPlatformVersion', () async {
    BasicWs basicWsPlugin = BasicWs();
    MockBasicWsPlatform fakePlatform = MockBasicWsPlatform();
    BasicWsPlatform.instance = fakePlatform;

    expect(await basicWsPlugin.getPlatformVersion(), '42');
  });
}

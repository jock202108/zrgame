import 'package:flutter_test/flutter_test.dart';
import 'package:basic_network/basic_network.dart';
import 'package:basic_network/basic_network_platform_interface.dart';
import 'package:basic_network/basic_network_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBasicNetworkPlatform
    with MockPlatformInterfaceMixin
    implements BasicNetworkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BasicNetworkPlatform initialPlatform = BasicNetworkPlatform.instance;

  test('$MethodChannelBasicNetwork is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBasicNetwork>());
  });

  test('getPlatformVersion', () async {
    BasicNetwork basicNetworkPlugin = BasicNetwork();
    MockBasicNetworkPlatform fakePlatform = MockBasicNetworkPlatform();
    BasicNetworkPlatform.instance = fakePlatform;

    expect(await basicNetworkPlugin.getPlatformVersion(), '42');
  });
}

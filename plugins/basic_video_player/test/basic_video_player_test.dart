import 'package:flutter_test/flutter_test.dart';
import 'package:basic_video_player/basic_video_player.dart';
import 'package:basic_video_player/basic_video_player_platform_interface.dart';
import 'package:basic_video_player/basic_video_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBasicVideoPlayerPlatform
    with MockPlatformInterfaceMixin
    implements BasicVideoPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BasicVideoPlayerPlatform initialPlatform = BasicVideoPlayerPlatform.instance;

  test('$MethodChannelBasicVideoPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBasicVideoPlayer>());
  });

  test('getPlatformVersion', () async {
    BasicVideoPlayer basicVideoPlayerPlugin = BasicVideoPlayer();
    MockBasicVideoPlayerPlatform fakePlatform = MockBasicVideoPlayerPlatform();
    BasicVideoPlayerPlatform.instance = fakePlatform;

    expect(await basicVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}

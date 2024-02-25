#ifndef FLUTTER_PLUGIN_BASIC_VIDEO_PLAYER_PLUGIN_H_
#define FLUTTER_PLUGIN_BASIC_VIDEO_PLAYER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace basic_video_player {

class BasicVideoPlayerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BasicVideoPlayerPlugin();

  virtual ~BasicVideoPlayerPlugin();

  // Disallow copy and assign.
  BasicVideoPlayerPlugin(const BasicVideoPlayerPlugin&) = delete;
  BasicVideoPlayerPlugin& operator=(const BasicVideoPlayerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace basic_video_player

#endif  // FLUTTER_PLUGIN_BASIC_VIDEO_PLAYER_PLUGIN_H_

#include "include/basic_video_player/basic_video_player_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "basic_video_player_plugin.h"

void BasicVideoPlayerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  basic_video_player::BasicVideoPlayerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

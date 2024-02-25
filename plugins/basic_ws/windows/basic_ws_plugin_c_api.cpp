#include "include/basic_ws/basic_ws_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "basic_ws_plugin.h"

void BasicWsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  basic_ws::BasicWsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

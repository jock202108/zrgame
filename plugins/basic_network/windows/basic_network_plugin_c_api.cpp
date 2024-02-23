#include "include/basic_network/basic_network_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "basic_network_plugin.h"

void BasicNetworkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  basic_network::BasicNetworkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

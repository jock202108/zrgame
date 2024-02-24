#include "include/ob_com_login/ob_com_login_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ob_com_login_plugin.h"

void ObComLoginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ob_com_login::ObComLoginPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

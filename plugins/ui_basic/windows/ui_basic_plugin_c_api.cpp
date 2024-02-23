#include "include/ui_basic/ui_basic_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ui_basic_plugin.h"

void UiBasicPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ui_basic::UiBasicPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <basic_network/basic_network_plugin_c_api.h>
#include <file_selector_windows/file_selector_windows.h>
#include <ob_com_login/ob_com_login_plugin_c_api.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>
#include <ui_basic/ui_basic_plugin_c_api.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  BasicNetworkPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("BasicNetworkPluginCApi"));
  FileSelectorWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileSelectorWindows"));
  ObComLoginPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ObComLoginPluginCApi"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
  UiBasicPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UiBasicPluginCApi"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}

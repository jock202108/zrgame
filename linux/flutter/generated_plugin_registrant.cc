//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <basic_network/basic_network_plugin.h>
#include <file_selector_linux/file_selector_plugin.h>
#include <ob_com_login/ob_com_login_plugin.h>
#include <ui_basic/ui_basic_plugin.h>
#include <url_launcher_linux/url_launcher_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) basic_network_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BasicNetworkPlugin");
  basic_network_plugin_register_with_registrar(basic_network_registrar);
  g_autoptr(FlPluginRegistrar) file_selector_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FileSelectorPlugin");
  file_selector_plugin_register_with_registrar(file_selector_linux_registrar);
  g_autoptr(FlPluginRegistrar) ob_com_login_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ObComLoginPlugin");
  ob_com_login_plugin_register_with_registrar(ob_com_login_registrar);
  g_autoptr(FlPluginRegistrar) ui_basic_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UiBasicPlugin");
  ui_basic_plugin_register_with_registrar(ui_basic_registrar);
  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");
  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);
}

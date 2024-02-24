//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <basic_network/basic_network_plugin_c_api.h>
#include <ui_basic/ui_basic_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  BasicNetworkPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("BasicNetworkPluginCApi"));
  UiBasicPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UiBasicPluginCApi"));
}

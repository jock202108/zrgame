//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <basic_network/basic_network_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) basic_network_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BasicNetworkPlugin");
  basic_network_plugin_register_with_registrar(basic_network_registrar);
}

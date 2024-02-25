//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <basic_video_player/basic_video_player_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) basic_video_player_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BasicVideoPlayerPlugin");
  basic_video_player_plugin_register_with_registrar(basic_video_player_registrar);
}

#ifndef FLUTTER_PLUGIN_OB_COM_LOGIN_PLUGIN_H_
#define FLUTTER_PLUGIN_OB_COM_LOGIN_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _ObComLoginPlugin ObComLoginPlugin;
typedef struct {
  GObjectClass parent_class;
} ObComLoginPluginClass;

FLUTTER_PLUGIN_EXPORT GType ob_com_login_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void ob_com_login_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_OB_COM_LOGIN_PLUGIN_H_

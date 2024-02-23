#ifndef FLUTTER_PLUGIN_UI_BASIC_PLUGIN_H_
#define FLUTTER_PLUGIN_UI_BASIC_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ui_basic {

class UiBasicPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  UiBasicPlugin();

  virtual ~UiBasicPlugin();

  // Disallow copy and assign.
  UiBasicPlugin(const UiBasicPlugin&) = delete;
  UiBasicPlugin& operator=(const UiBasicPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ui_basic

#endif  // FLUTTER_PLUGIN_UI_BASIC_PLUGIN_H_

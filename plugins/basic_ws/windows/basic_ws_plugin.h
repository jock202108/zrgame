#ifndef FLUTTER_PLUGIN_BASIC_WS_PLUGIN_H_
#define FLUTTER_PLUGIN_BASIC_WS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace basic_ws {

class BasicWsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BasicWsPlugin();

  virtual ~BasicWsPlugin();

  // Disallow copy and assign.
  BasicWsPlugin(const BasicWsPlugin&) = delete;
  BasicWsPlugin& operator=(const BasicWsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace basic_ws

#endif  // FLUTTER_PLUGIN_BASIC_WS_PLUGIN_H_

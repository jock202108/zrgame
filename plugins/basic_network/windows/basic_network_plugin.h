#ifndef FLUTTER_PLUGIN_BASIC_NETWORK_PLUGIN_H_
#define FLUTTER_PLUGIN_BASIC_NETWORK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace basic_network {

class BasicNetworkPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BasicNetworkPlugin();

  virtual ~BasicNetworkPlugin();

  // Disallow copy and assign.
  BasicNetworkPlugin(const BasicNetworkPlugin&) = delete;
  BasicNetworkPlugin& operator=(const BasicNetworkPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace basic_network

#endif  // FLUTTER_PLUGIN_BASIC_NETWORK_PLUGIN_H_


import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_basic/router/route_provider.dart';
import 'package:zrgame/pages/splash_page.dart';
import '../main.dart';
class HomeRoute implements RouteProvider {
  static const String home = '/home';
  static const String splash = '/';

  @override
  List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: home,
        builder: (context, state)  {
          return HomePage();
        },
      ),

    ];
  }
}

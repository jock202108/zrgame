
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_basic/router/route_provider.dart';

import '../pages/login/login_page.dart';
import '../pages/register/register_page.dart';

class LoginRoute implements RouteProvider {
  static const String login = '/login';
  static const String register = '/register';

  @override
  List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterPage(),
      ),

    ];
  }
}

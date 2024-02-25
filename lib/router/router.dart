
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ob_com_login/router/login_route.dart';

import '../pages/home_route.dart';



final RouteObserver<ModalRoute> routeObserver = RouteObserver();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  observers: [
    routeObserver,
    MyNavigatorObserver(),
  ],
  routes: [
    ...HomeRoute().getRoutes(),
    ...LoginRoute().getRoutes(),
  ],
);



class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPush: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPop: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didRemove: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint(
        'didReplace: ${oldRoute?.settings.name} -> ${newRoute?.settings.name}');
  }
}

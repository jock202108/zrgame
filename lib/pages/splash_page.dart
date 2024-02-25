import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ob_com_login/router/login_route.dart';
import 'package:ui_basic/ui_basic.dart';

import 'home_route.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("splash"),
            ElevatedButton(
                onPressed: () {
                  context.push(
                    Uri(
                      path: HomeRoute.home,
                      queryParameters: {'id': '10'},
                    ).toString(),
                  );
                },
                child: Text("跳转到首页")),

            ElevatedButton(
                onPressed: () {
                  context.push(
                    Uri(
                      path: LoginRoute.login,
                      queryParameters: {'id': '10'},
                    ).toString(),
                  );
                },
                child: Text("跳转到登录页")),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

                  context.push(
                    HomeRoute.home,
                  );
                },
                child: Text("跳转到首页"))
          ],
        ),
      ),
    );
  }
}

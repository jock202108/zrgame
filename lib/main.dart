import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_basic/initializer/app_initializers.dart';
import 'package:ui_basic/utils/sp_util.dart';
import 'package:zrgame/theme/provider.dart';

import 'theme/app_themes.dart';
import 'my_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupApp();
}

Future<void> setupApp() async {
  //兼容android  SystemUiOverlayStyle 虚拟按键处理
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //状态栏 背景透明
      //虚拟按键背景色
      systemNavigationBarIconBrightness: Brightness.light,
      //虚拟按键图标色
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  } else {
    //ios
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  await AppInitializers.getInstance().init();

  runApp(
     ProviderScope(
      observers: [
        MyObserver(),
      ],
      child: const MyApp(),
    ),
  );
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 通过观察提供者程序，来初始化提供者程序。
    // 通过使用 "watch"，提供者程序将保持存活，不会被处置。
  //  ref.watch(myProvider);
    return child;
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeMode = ref.watch(themeStateProvider);
    return  _EagerInitialization(
      child: MaterialApp(
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        home: const HomePage(),
      ),
    );
  }
}


class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Mode Demo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.lightbulb_outline),
            onPressed: () {
              ref.read(themeStateProvider.notifier).toggleTheme(
                themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(themeStateProvider.notifier).toggleTheme(
              themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
            );
          },
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
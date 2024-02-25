import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_basic/initializer/app_initializers.dart';
import 'package:ui_basic/utils/sp_util.dart';
import 'package:ui_basic/widget/common_app_bar.dart';
import 'package:ui_basic/generated/l10n.dart';
import 'package:zrgame/theme/provider.dart';
import 'generated/l10n.dart';
import 'initializer/local_initializer.dart';
import 'theme/app_themes.dart';
import 'my_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupApp();
}


// 定义一个StateProvider来管理Locale状态
final localeProvider = StateProvider<Locale>((ref) => const Locale('zh', 'CN'));


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

  await AppInitializers.getInstance().init(newInitializers: [
    LocalInitializer(),
  ]);

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
    final locale = ref.watch(localeProvider);
    return  _EagerInitialization(
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          UiBasicS.delegate,
          ///为 Material 组件库提供本地化的字符串和其他值
          GlobalMaterialLocalizations.delegate,
          ///为 Cupertino 组件库提供本地化的字符串和其他值
          GlobalWidgetsLocalizations.delegate,
          ///定义了默认的文本排列方向，由左到右或者由右到左
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales:S.delegate.supportedLocales,
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        locale: locale,
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
        title: Text(S.of(context).title),
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
        child: Column(
          children: [
            CommonTitleBar(),
            ElevatedButton(
              onPressed: () {
                ref.read(localeProvider.notifier).state = const Locale('en', '');
              },
              child: const Text('Toggle Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(localeProvider.notifier).state = const Locale('zh',"CN");
              },
              child: const Text('Toggle Theme'),
            )
          ],
        ),
      ),
    );
  }
}
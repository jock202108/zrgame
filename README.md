# zrgame
1.flutter 版本  3.19.1

2.国际化：推荐阅读:http://www.guijs.cn/vue/8759.html 
       (1)安装 Flutter Intl 插件，检查到arb文件变化会自动生成dart文件
       (2)切换语言 ref.read(localeProvider.notifier).state = const Locale('zh',"CN");
       (3)关于占位符 
          arb中使用{} 例如:"title":"我是{name}",
          调用：Text(S.of(context).title(17))
       (4)获取当前 locale: 
          var locale = Localizations.localeOf(context);
       (5)拿不到 context可以用 current 可以替代 S.of(context),例:S.current.title
       注意：如果是新添加的module，为了让主工程支持切换module中的语言需要做的工作：
           （1）在LocalInitializer中把所有语言添加到主工程的数组里面
           （2）在MaterialApp中的localizationsDelegates数组里面添加相应的LocalizationsDelegate


3.切换暗黑模式：
ref.read(themeStateProvider.notifier).toggleTheme(
themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
);


4.关于图片路径自动生成，请安装as插件
FlutterAssetsGenerator:https://plugins.jetbrains.com/plugin/15427-flutterassetsgenerator

6.关于路由go_router
    (1)推荐阅读:https://www.jianshu.com/p/6bd8d27aac06
    (2)页面跳转可以使用:
       context.push(HomeRoute.home);
       context.go(HomeRoute.home);
      区别:push方式可以在旧页面上盖上新页面，会自动添加上返回键，适用大多数场景。
          go方式会把历史页面都清空，适用如登录后跳转到首页不能返回登录页的等特殊场景
    (3)页面跳转携带参数推荐方式:
       （1）通过uri传
           context.push(Uri(path: HomeRoute.home, queryParameters: {'id': '10'},).toString(),);
       （2） 如果你要传递复杂的对象，或者不适合放在url中的数据，可以使用extra
           context.go('/details', extra: MyCustomObject());
           注意:这种方式无法适配用户在web端，直接输入url的方式
    (4)关闭页面   
        context.pop() 


7.关于状态管理RiverPod:
    (1).推荐阅读 https://riverpod.dev/zh-Hans/docs/introduction/getting_started
    (2).生成代码命令 :dart run build_runner watch
    (3).请在 onDispose 回调中进行资源释放,防止内存泄露
      ref.onDispose(() {
     ///释放资源
      });
    (4).对于复杂的页面请多使用 select 进行过滤,缩小刷新范围,提高性能
        相关文档：https://riverpod.dev/zh-Hans/docs/advanced/select

8.关于json实例化
    (1)添加依赖
         dependencies:
           json_annotation: ^4.8.1
         dev_dependencies:
           json_serializable: ^6.7.1
           build_runner: ^2.1.11
     (2)创建对象
     (3)执行命令 flutter pub run build_runner build ，就可以生成解析 JSON 的代码。







        













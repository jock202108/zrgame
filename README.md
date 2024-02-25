# zrgame
1.flutter 版本  3.19.1

2.国际化： 安装 Flutter Intl 插件，检查到arb文件变化会自动生成dart文件

3.切换暗黑模式：
ref.read(themeStateProvider.notifier).toggleTheme(
themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
);

4.切换语言
ref.read(localeProvider.notifier).state = const Locale('zh',"CN");
如果是新添加的module，为了让主工程支持切换module中的语言需要做的工作：
（1）在LocalInitializer中把所有语言添加到主工程的数组里面
（2）在MaterialApp中的localizationsDelegates数组里面添加相应的LocalizationsDelegate










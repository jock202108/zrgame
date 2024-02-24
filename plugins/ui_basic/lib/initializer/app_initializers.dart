import 'package:synchronized/synchronized.dart';
import 'package:ui_basic/initializer/sp_initializer.dart';
import 'package:ui_basic/ui_basic.dart';

import 'app_initializer.dart';

class AppInitializers {
  static  AppInitializers? _singleton;
  static final Lock _lock = Lock();
  List<AppInitializer> initializers = [
    SpInitializer(),
  ];

  AppInitializers._();

  static AppInitializers getInstance() {
    if (_singleton == null) {
      _lock.synchronized(() {
        if (_singleton == null) {
          // keep local instance till it is fully initialized.
          // 保持本地实例直到完全初始化。
          var singleton = AppInitializers._();
          _singleton = singleton;
        }
      });
    }
    return _singleton!;
  }

  Future init({List<AppInitializer>? newInitializers}) async {
    if (ObjectUtil.isNotEmpty(newInitializers)) {
      initializers.addAll(newInitializers!);
    }
    for (final initializer in initializers) {
      final result = initializer.init();
      if (result is Future) await result;
    }
  }
}

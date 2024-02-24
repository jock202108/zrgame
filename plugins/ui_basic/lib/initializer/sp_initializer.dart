import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../utils/sp_util.dart';
import 'app_initializer.dart';

class SpInitializer implements AppInitializer {
  @override
  FutureOr<void> init() async {
    await SpUtil.getInstance();
  }
}

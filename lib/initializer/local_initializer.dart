import 'dart:async';
import 'package:ui_basic/initializer/app_initializer.dart';
import 'package:zrgame/generated/intl/messages_en.dart' as messages_en;
import 'package:zrgame/generated/intl/messages_zh_CN.dart' as messages_zn;
import 'package:zrgame/generated/intl/messages_ms_MY.dart' as messages_my;
import 'package:zrgame/generated/intl/messages_th_TH.dart' as messages_th;
import 'package:zrgame/generated/intl/messages_vi_VN.dart' as messages_vn;


import 'package:ui_basic/generated/intl/messages_en.dart' as ui_basic_messages_en;
import 'package:ui_basic/generated/intl/messages_zh_CN.dart' as ui_basic_messages_zn;
import 'package:ui_basic/generated/intl/messages_ms_MY.dart' as ui_basic_messages_my;
import 'package:ui_basic/generated/intl/messages_th_TH.dart' as ui_basic_messages_th;
import 'package:ui_basic/generated/intl/messages_vi_VN.dart' as ui_basic_messages_vn;

import 'package:ob_com_login/generated/intl/messages_en.dart' as ob_com_login_messages_en;
import 'package:ob_com_login/generated/intl/messages_zh_CN.dart' as ob_com_login_messages_zn;
import 'package:ob_com_login/generated/intl/messages_ms_MY.dart' as ob_com_login_messages_my;
import 'package:ob_com_login/generated/intl/messages_th_TH.dart' as ob_com_login_messages_th;
import 'package:ob_com_login/generated/intl/messages_vi_VN.dart' as ob_com_login_messages_vn;




class LocalInitializer implements AppInitializer {
  @override
  FutureOr<void> init() async {
    ///ui_basic
    messages_en.messages.messages.addAll(ui_basic_messages_en.messages.messages);
    messages_zn.messages.messages.addAll(ui_basic_messages_zn.messages.messages);
    messages_my.messages.messages.addAll(ui_basic_messages_my.messages.messages);
    messages_th.messages.messages.addAll(ui_basic_messages_th.messages.messages);
    messages_vn.messages.messages.addAll(ui_basic_messages_vn.messages.messages);

    ///ob_com_login
    messages_en.messages.messages.addAll(ob_com_login_messages_en.messages.messages);
    messages_zn.messages.messages.addAll(ob_com_login_messages_zn.messages.messages);
    messages_my.messages.messages.addAll(ob_com_login_messages_my.messages.messages);
    messages_th.messages.messages.addAll(ob_com_login_messages_th.messages.messages);
    messages_vn.messages.messages.addAll(ob_com_login_messages_vn.messages.messages);


  }
}

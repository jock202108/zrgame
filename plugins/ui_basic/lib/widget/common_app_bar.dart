import 'package:flutter/material.dart';

import '../configs/styles/app_text_styles.dart';
import '../generated/l10n.dart';

/// 通用的AppBar，保持统一样式
class CommonTitleBar extends AppBar {
  /// 文字
  factory CommonTitleBar({
    String? titleText,
    Widget? titleWidget,
    List<Widget> actions = const [],
    PreferredSizeWidget? bottom,
    Color? backgroundColor,
    Widget? leading,
    double? leadingWidth,
    double? toolbarHeight,
    bool? centerTitle,
    Function? backAction,
    Key? key,
  }) =>
      CommonTitleBar.leadingAction(
        titleText: titleText,
        titleWidget: titleWidget,
        actions: actions,
        bottom: bottom,
        leading: leading,
        leadingWidth: leadingWidth,
        backgroundColor: backgroundColor,
        toolbarHeight: toolbarHeight,
        centerTitle: centerTitle,
        backAction: backAction,
        key: key,
      );

  CommonTitleBar.leadingAction({
    /// 标题
    String? titleText,

    /// 上下文
    BuildContext? context,

    /// 自定义标题widget
    Widget? titleWidget,
    Key? key,

    /// 右侧widget
    List<Widget> actions = const [],
    PreferredSizeWidget? bottom,

    /// 背景色
    Color? backgroundColor,

    /// 返回事件
    Function? backAction,

    /// 左侧widget
    Widget? leading,
    double? leadingWidth,
    double? toolbarHeight,
    bool? centerTitle,

    /// 底部线
    double? elevation,
  }) : super(
          title: titleWidget ??Builder(builder: (ctx){
            return  _createTitleWidget(UiBasicS.current.ui_basic_title ?? '');
          }),
          actions: actions,
          key: key,
          scrolledUnderElevation: 0,
          bottom: bottom,
          centerTitle: centerTitle ?? true,
          leadingWidth: leadingWidth,
          toolbarHeight: toolbarHeight ?? 60,
          leading: leading ??
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),

              ),
          backgroundColor: backgroundColor,
          elevation: elevation ?? 0,
        );
}

/// 创建标题文字
///
/// [titleText] 标题文字
Widget _createTitleWidget(String titleText) => Text(
      titleText,
      style: AppTextStyles.bodyLg,
    );

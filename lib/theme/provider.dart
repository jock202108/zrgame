


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeStateProvider = StateNotifierProvider<ThemeStateNotifier, ThemeMode>((ref) {
  return ThemeStateNotifier(ThemeMode.system);
});

class ThemeStateNotifier extends StateNotifier<ThemeMode> {
  ThemeStateNotifier(super.themeMode);

  void toggleTheme(ThemeMode themeMode) {
    state = themeMode;
  }
}
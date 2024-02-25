// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class UiBasicS {
  UiBasicS();

  static UiBasicS? _current;

  static UiBasicS get current {
    assert(_current != null,
        'No instance of UiBasicS was loaded. Try to initialize the UiBasicS delegate before accessing UiBasicS.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<UiBasicS> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = UiBasicS();
      UiBasicS._current = instance;

      return instance;
    });
  }

  static UiBasicS of(BuildContext context) {
    final instance = UiBasicS.maybeOf(context);
    assert(instance != null,
        'No instance of UiBasicS present in the widget tree. Did you add UiBasicS.delegate in localizationsDelegates?');
    return instance!;
  }

  static UiBasicS? maybeOf(BuildContext context) {
    return Localizations.of<UiBasicS>(context, UiBasicS);
  }

  /// `baseEnglish`
  String get ui_basic_title {
    return Intl.message(
      'baseEnglish',
      name: 'ui_basic_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<UiBasicS> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ms', countryCode: 'MY'),
      Locale.fromSubtags(languageCode: 'th', countryCode: 'TH'),
      Locale.fromSubtags(languageCode: 'vi', countryCode: 'VN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<UiBasicS> load(Locale locale) => UiBasicS.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

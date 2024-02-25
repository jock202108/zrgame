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

class ObLoginS {
  ObLoginS();

  static ObLoginS? _current;

  static ObLoginS get current {
    assert(_current != null,
        'No instance of ObLoginS was loaded. Try to initialize the ObLoginS delegate before accessing ObLoginS.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<ObLoginS> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = ObLoginS();
      ObLoginS._current = instance;

      return instance;
    });
  }

  static ObLoginS of(BuildContext context) {
    final instance = ObLoginS.maybeOf(context);
    assert(instance != null,
        'No instance of ObLoginS present in the widget tree. Did you add ObLoginS.delegate in localizationsDelegates?');
    return instance!;
  }

  static ObLoginS? maybeOf(BuildContext context) {
    return Localizations.of<ObLoginS>(context, ObLoginS);
  }

  /// `login`
  String get ob_login_login {
    return Intl.message(
      'login',
      name: 'ob_login_login',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<ObLoginS> {
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
  Future<ObLoginS> load(Locale locale) => ObLoginS.load(locale);
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

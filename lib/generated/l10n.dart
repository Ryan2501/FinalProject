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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Exchange Rate Calculator`
  String get appTitle {
    return Intl.message(
      'Exchange Rate Calculator',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Rate`
  String get screen1Title {
    return Intl.message(
      'Exchange Rate',
      name: 'screen1Title',
      desc: '',
      args: [],
    );
  }

  /// `Currency conversion calculator`
  String get screen1Description {
    return Intl.message(
      'Currency conversion calculator',
      name: 'screen1Description',
      desc: '',
      args: [],
    );
  }

  /// `Currency Converter`
  String get currencyConverterTitle {
    return Intl.message(
      'Currency Converter',
      name: 'currencyConverterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter Amount`
  String get enterAmountLabel {
    return Intl.message(
      'Enter Amount',
      name: 'enterAmountLabel',
      desc: '',
      args: [],
    );
  }

  /// `0.00`
  String get enterAmountHint {
    return Intl.message(
      '0.00',
      name: 'enterAmountHint',
      desc: '',
      args: [],
    );
  }

  /// `Convert to:`
  String get convertToLabel {
    return Intl.message(
      'Convert to:',
      name: 'convertToLabel',
      desc: '',
      args: [],
    );
  }

  /// `Convert`
  String get convertButtonLabel {
    return Intl.message(
      'Convert',
      name: 'convertButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Converted Amount`
  String get convertedAmountLabel {
    return Intl.message(
      'Converted Amount',
      name: 'convertedAmountLabel',
      desc: '',
      args: [],
    );
  }

  /// `US Dollar (USD)`
  String get usdCurrency {
    return Intl.message(
      'US Dollar (USD)',
      name: 'usdCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Euro (EUR)`
  String get eurCurrency {
    return Intl.message(
      'Euro (EUR)',
      name: 'eurCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Japanese Yen (JPY)`
  String get jpyCurrency {
    return Intl.message(
      'Japanese Yen (JPY)',
      name: 'jpyCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Chinese Yuan (CNY)`
  String get cnyCurrency {
    return Intl.message(
      'Chinese Yuan (CNY)',
      name: 'cnyCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Hong Kong Dollar (HKD)`
  String get hkdCurrency {
    return Intl.message(
      'Hong Kong Dollar (HKD)',
      name: 'hkdCurrency',
      desc: '',
      args: [],
    );
  }

  /// `British Pound (GBP)`
  String get gbpCurrency {
    return Intl.message(
      'British Pound (GBP)',
      name: 'gbpCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Australian Dollar (AUD)`
  String get audCurrency {
    return Intl.message(
      'Australian Dollar (AUD)',
      name: 'audCurrency',
      desc: '',
      args: [],
    );
  }

  /// `New Taiwan Dollar (TWD)`
  String get twdCurrency {
    return Intl.message(
      'New Taiwan Dollar (TWD)',
      name: 'twdCurrency',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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

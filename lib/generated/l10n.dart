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

  /// `Welcome to the flutter`
  String get welcome_title {
    return Intl.message(
      'Welcome to the flutter',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестный экран`
  String get unknown_screen {
    return Intl.message(
      'Неизвестный экран',
      name: 'unknown_screen',
      desc: '',
      args: [],
    );
  }

  /// `Вход`
  String get login {
    return Intl.message(
      'Вход',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Дата проведения`
  String get event_date {
    return Intl.message(
      'Дата проведения',
      name: 'event_date',
      desc: '',
      args: [],
    );
  }

  /// `Команда`
  String get event_team {
    return Intl.message(
      'Команда',
      name: 'event_team',
      desc: '',
      args: [],
    );
  }

  /// `Рейтинг`
  String get event_rating {
    return Intl.message(
      'Рейтинг',
      name: 'event_rating',
      desc: '',
      args: [],
    );
  }

  /// `От`
  String get event_date_from {
    return Intl.message(
      'От',
      name: 'event_date_from',
      desc: '',
      args: [],
    );
  }

  /// `до`
  String get event_date_to {
    return Intl.message(
      'до',
      name: 'event_date_to',
      desc: '',
      args: [],
    );
  }

  /// `участников`
  String get event_date_hackers {
    return Intl.message(
      'участников',
      name: 'event_date_hackers',
      desc: '',
      args: [],
    );
  }

  /// `Новые`
  String get event_filter_newest {
    return Intl.message(
      'Новые',
      name: 'event_filter_newest',
      desc: '',
      args: [],
    );
  }

  /// `Лучшие`
  String get event_filter_best {
    return Intl.message(
      'Лучшие',
      name: 'event_filter_best',
      desc: '',
      args: [],
    );
  }

  /// `Популярные`
  String get event_filter_popular {
    return Intl.message(
      'Популярные',
      name: 'event_filter_popular',
      desc: '',
      args: [],
    );
  }

  /// `Попробовать еще раз`
  String get retry {
    return Intl.message(
      'Попробовать еще раз',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Вручную`
  String get handmade {
    return Intl.message(
      'Вручную',
      name: 'handmade',
      desc: '',
      args: [],
    );
  }

  /// `Через резюме`
  String get resume {
    return Intl.message(
      'Через резюме',
      name: 'resume',
      desc: '',
      args: [],
    );
  }

  /// `// deprecated`
  String get deprecated {
    return Intl.message(
      '// deprecated',
      name: 'deprecated',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте подключение к интернету`
  String get event_error {
    return Intl.message(
      'Проверьте подключение к интернету',
      name: 'event_error',
      desc: '',
      args: [],
    );
  }

  /// `/* Загрузка через резюме позволит автоматически заполнить необходимые поля, например, контакты, о себе, образование */`
  String get auth_description {
    return Intl.message(
      '/* Загрузка через резюме позволит автоматически заполнить необходимые поля, например, контакты, о себе, образование */',
      name: 'auth_description',
      desc: '',
      args: [],
    );
  }

  /// `События и соревнования`
  String get events_and_competitions_title {
    return Intl.message(
      'События и соревнования',
      name: 'events_and_competitions_title',
      desc: '',
      args: [],
    );
  }

  /// `/* В этом разделе вы можете увидеть анонсы ближайших событий в области cпортивного программирования в России */`
  String get events_and_competitions_subtitle {
    return Intl.message(
      '/* В этом разделе вы можете увидеть анонсы ближайших событий в области cпортивного программирования в России */',
      name: 'events_and_competitions_subtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
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

import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:github_repository_search/core/provider/language_colors.dart';
import 'package:github_repository_search/features/settings/language_choice/language_choice_page.viewmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app.dart';
import 'core/i18n/strings.g.dart';
import 'core/provider/shared_preferences.dart';
// ignore: depend_on_referenced_packages


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  LocaleSettings.useDeviceLocale();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );

  // LanguageColorsを読み込み
  final stopWatch = Stopwatch()..start();
  final languageColors = await loadLanguageColors();
  log(
    'Load LanguageColors took '
    '${(stopWatch..stop()).elapsed.inMicroseconds / 1000}ms',
  );
  // SharedPreferenceを初期化
  final prefs = await SharedPreferences.getInstance();

  final lang = LanguageNotifier.getLanguageFromPrefs(prefs);
  if (lang != null) {
    LocaleSettings.setLocaleRaw(lang);
  }

  runApp(
    ProviderScope(
      observers: const [],
      overrides: [
        languageColorsProvider.overrideWithValue(languageColors),
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: DevicePreview(
        // ignore: avoid_redundant_argument_values
        enabled: !kReleaseMode,
        builder: (context) => TranslationProvider(
          child: const App(),
        ),
      ),
    ),
  );
}

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/core/provider/setting/theme_provider.dart';
import 'package:github_repository_search/core/router/router.dart';
import 'package:github_repository_search/core/theme/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeProvider = ref.watch(themeProvider);
    final router = ref.watch(routerProvider);
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => MaterialApp.router(
        title: 'GitHub Repository Search',
        theme:
            lightTheme(themeModeProvider.useDynamicColor ? lightDynamic : null),
        darkTheme:
            darkTheme(themeModeProvider.useDynamicColor ? darkDynamic : null),
        themeMode: themeModeProvider.themeMode,
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}

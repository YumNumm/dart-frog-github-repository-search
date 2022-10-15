import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enginner_codecheck/provider/setting/theme_provider.dart';
import 'package:flutter_enginner_codecheck/ui/router.dart';
import 'package:flutter_enginner_codecheck/ui/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
      final themeMode =
        ref.watch(themeProvider.select((value) => value.themeMode));
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'GitHub Repository Search',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: DevicePreview.locale(context),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      useInheritedMediaQuery: true,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

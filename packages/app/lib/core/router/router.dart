import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:github_repository_search/features/error/route_error_screen.dart';
import 'package:github_repository_search/ui/page/search_view/search_view.dart';
import 'package:github_repository_search/ui/page/setting_view/language_choice_page.dart';
import 'package:github_repository_search/ui/page/setting_view/settings_view.dart';
import 'package:github_repository_search/ui/page/setting_view/theme_choice_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

// ref: https://zenn.dev/susatthi/articles/20220801-135028-flutter-go-router-builder

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchPage();
}

@TypedGoRoute<SettingRoute>(
  path: '/setting',
  routes: [
    TypedGoRoute<ThemeChoiceRoute>(
      path: 'theme',
    ),
    TypedGoRoute<LanguageChoiceRoute>(
      path: 'language',
    ),
  ],
)
class SettingRoute extends GoRouteData {
  const SettingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingView();
  }
}

class ThemeChoiceRoute extends GoRouteData {
  const ThemeChoiceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThemeChoicePage();
  }
}

class LanguageChoiceRoute extends GoRouteData {
  const LanguageChoiceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LanguageChoicePage();
  }
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: kDebugMode,
      errorBuilder: (context, state) => RouteErrorScreen(state.error!),
    );

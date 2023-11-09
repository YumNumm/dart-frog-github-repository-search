import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:github_repository_search/features/error/route_error_screen.dart';
import 'package:github_repository_search/features/search/ui/search_page.dart';
import 'package:github_repository_search/features/settings/bff_endpoint/bff_endpoint.dart';
import 'package:github_repository_search/features/settings/language_choice/language_choice_page.dart';
import 'package:github_repository_search/features/settings/settings_view.dart';
import 'package:github_repository_search/features/settings/theme_choice/theme_choice_page.dart';
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
    TypedGoRoute<BffEndpointChoiceRoute>(
      path: 'bff_endpoint',
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

class BffEndpointChoiceRoute extends GoRouteData {
  const BffEndpointChoiceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BffEndpointChoicePage();
  }
}

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: kDebugMode,
      errorBuilder: (context, state) => RouteErrorScreen(state.error!),
    );

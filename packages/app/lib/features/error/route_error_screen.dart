import 'package:flutter/material.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/core/router/router.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen(this.error, {super.key});
  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.routeErrorView.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(error.toString()),
            ElevatedButton.icon(
              onPressed: () => const HomeRoute().go(context),
              label: Text(t.routeErrorView.back),
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}

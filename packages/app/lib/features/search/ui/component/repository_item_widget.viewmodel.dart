import 'package:flutter/material.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:url_launcher/url_launcher.dart';


class RepositoryItemWidgetViewModel {
  Future<void> onItemPressed(
    BuildContext context,
    SearchResponseItem item,
  ) async {
    final uri = Uri.parse(item.htmlUrl);
    if (await canLaunchUrl(uri)) {
      try {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t.repositoryDetailWidget.cannotLaunchUrl(url: uri.toString()),
          ),
        ),
      );
    }
  }
}

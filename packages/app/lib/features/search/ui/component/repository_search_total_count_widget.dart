import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/features/search/ui/search_page_view_model.dart';
import 'package:intl/intl.dart';
import 'package:substring_highlight/substring_highlight.dart';

class RepositorySearchTotalCountWidget extends ConsumerWidget {
  const RepositorySearchTotalCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(repositorySearchTotalCountProvider);
    final theme = Theme.of(context);
    final numberFormatter = NumberFormat('#,###');

    return switch (state) {
      null => const SizedBox.shrink(),
      final int value => () {
          final formattedCount = numberFormatter.format(value);
          return Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SubstringHighlight(
                text: t.mainView.repositoryResult(count: formattedCount),
                term: formattedCount,
                overflow: TextOverflow.visible,
                textStyle: theme.textTheme.bodyMedium!,
                textStyleHighlight: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }(),
    };
  }
}

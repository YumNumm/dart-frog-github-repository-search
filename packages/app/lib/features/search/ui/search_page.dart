import 'package:flutter/material.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/core/router/router.dart';
import 'package:github_repository_search/features/search/ui/search_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'component/repository_search_list.dart';
import 'component/repository_search_text_field.dart';
import 'component/repository_search_total_count_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      floatingActionButton: _FloatingActionButton(),
      body: Column(
        children: [
          RepositorySearchTextField(),
          RepositorySearchTotalCountWidget(),
          Expanded(
            child: RepositorySearchList(),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('${t.appName} BFF'),
      actions: [
        IconButton(
          onPressed: () => const SettingRoute().push<void>(context),
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}

class _FloatingActionButton extends ConsumerWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(repositorySearchQueryProvider);
    final hasResult =
        ref.watch(repositorySearchTotalCountProvider.select((s) => s != null));
    return switch (query) {
      null => const SizedBox.shrink(),
      _ when !hasResult => FloatingActionButton.extended(
          heroTag: 'RepositorySearchFloatingActionButton',
          onPressed: () async {
            primaryFocus?.unfocus();
            try {
              await ref
                  .read(repositorySearchViewModelProvider.notifier)
                  .fetch();
              // ignore: avoid_catches_without_on_clauses, empty_catches
            } catch (e) {}
          },
          label: Text(t.mainView.search),
          icon: const Icon(Icons.search),
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

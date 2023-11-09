import 'package:flutter/material.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/core/router/router.dart';
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
      title: Text(t.appName),
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
    final state = ref.watch(repositorySearchViewModel);
    return state.when<Widget>(
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
      data: (data) => FloatingActionButton.extended(
        heroTag: 'RepositorySearchFloatingActionButton',
        onPressed: () {
          primaryFocus?.unfocus();
          ref.read(repositorySearchViewModel.notifier).fetch();
        },
        label: Text(t.mainView.search),
        icon: const Icon(Icons.search),
      ),
    );
  }
}

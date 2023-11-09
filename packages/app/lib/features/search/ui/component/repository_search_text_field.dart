import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/features/search/ui/search_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositorySearchTextField extends HookConsumerWidget {
  const RepositorySearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final focusNode = useFocusNode();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        onChanged: (value) =>
            ref.read(repositorySearchQueryProvider.notifier).value = value,
        onEditingComplete: () =>
            ref.read(repositorySearchViewModelProvider.notifier).fetch(),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: t.mainView.searchPlaceholder,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            onPressed: () {
              controller.clear();
              ref.invalidate(repositorySearchQueryProvider);
            },
            icon: const Icon(Icons.clear),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

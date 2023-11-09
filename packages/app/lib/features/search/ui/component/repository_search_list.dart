import 'package:bff_api_types/bff_api_types.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repository_search/core/i18n/strings.g.dart';
import 'package:github_repository_search/features/search/ui/component/repository_item_widget.dart';
import 'package:github_repository_search/features/search/ui/search_page_view_model.dart';
import 'package:lottie/lottie.dart';

class RepositorySearchList extends ConsumerWidget {
  const RepositorySearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(repositorySearchViewModelProvider);
    return switch (state) {
      AsyncData<List<RepositorySearchResponseItem>>(value: final data) =>
        NotificationListener<ScrollEndNotification>(
          onNotification: (notification) {
            // 画面全体の0.9までスクロールしたら次のページを読み込む
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent * 0.9) {
              ref.read(repositorySearchViewModelProvider.notifier).fetch(
                    fetchMore: true,
                  );
            }
            return true;
          },
          child: Scrollbar(
            child: ListView.builder(
              itemCount: data.length + (state.isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == data.length) {
                  // InfiniteScroll Indicator
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                final item = data[index];
                return RepositoryItemWidget(
                  item: item,
                  term: ref.watch(repositorySearchQueryProvider) ?? '',
                );
              },
            ),
          ),
        ),
      AsyncLoading() => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      AsyncError(:final error) when state.hasValue => () {
          final data = state.valueOrNull!;
          return Scrollbar(
            child: ListView.builder(
              itemCount: data.length + 1,
              itemBuilder: (context, index) {
                if (index >= data.length) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: RepositorySearchErrorWidget(error),
                  );
                }
                final item = data[index];
                return RepositoryItemWidget(
                  item: item,
                  term: ref.watch(repositorySearchQueryProvider) ?? '',
                );
              },
            ),
          );
        }(),
      AsyncError(:final error) => RepositorySearchErrorWidget(error),
      _ => const SizedBox.shrink()
    };
  }
}

class RepositorySearchErrorWidget extends StatelessWidget {
  const RepositorySearchErrorWidget(
    this.error, {
    super.key,
  });
  final Object error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    if (error is RepositorySearchFetchException) {
      final exception = (error as RepositorySearchFetchException).exception;

      if (exception is DioException) {
        var message = exception.message;
        try {
          final errorInfo = ApiErrorResponse.fromJson(
            exception.response?.data as Map<String, dynamic>,
          );
          message = errorInfo.tip;
          // ignore: empty_catches
        } on () {}

        return Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: LottieBuilder.asset(
                  'assets/75279-error.json',
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    message ?? t.DioError[exception.type.name].toString(),
                    style: textTheme.titleLarge!.copyWith(
                      color: colorScheme.error,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Center(
        child: Text(
          '$error\n'
          '${(error as RepositorySearchFetchException).exception}',
        ),
      );
    }

    return Center(
      child: Text('$error'),
    );
  }
}

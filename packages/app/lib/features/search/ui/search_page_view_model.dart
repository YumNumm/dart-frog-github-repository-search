import 'package:bff_api_types/bff_api_types.dart';
import 'package:github_repository_search/core/extension/async_value_ex.dart';
import 'package:github_repository_search/core/foundation/result.dart';
import 'package:github_repository_search/features/search/data/repository_search_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_page_view_model.g.dart';

@riverpod
class RepositorySearchQuery extends _$RepositorySearchQuery {
  @override
  String? build() => null;

  // ignore: avoid_setters_without_getters
  set value(String? value) => state = value;
}

@riverpod
class RepositorySearchTotalCount extends _$RepositorySearchTotalCount {
  @override
  int? build() {
    // queryが変わったら破棄
    ref.listen(
      repositorySearchQueryProvider,
      (_, value) => ref.invalidateSelf(),
    );
    return null;
  }

  // ignore: avoid_setters_without_getters
  set value(int? value) => state = value;
}

@riverpod
class RepositorySearchViewModel extends _$RepositorySearchViewModel {
  @override
  AsyncValue<List<RepositorySearchResponseItem>>? build() {
    // queryが変わったら破棄
    ref.listen(
      repositorySearchQueryProvider,
      (_, value) {
        _currentPage = 0;
        ref.invalidateSelf();
      },
    );
    return null;
  }

  int _currentPage = 0;

  Future<void> fetch({
    bool fetchMore = false,
  }) async {
    // 既に読み込み中の場合は何もしない
    if (state != null && state!.isLoading) {
      return;
    }
    if (state != null && fetchMore) {
      state = const AsyncLoading<List<RepositorySearchResponseItem>>()
          .copyWithPrevious(state!);
    } else {
      state = const AsyncLoading<List<RepositorySearchResponseItem>>();
    }
    final query = ArgumentError.checkNotNull(
      ref.read(repositorySearchQueryProvider),
    );

    state = await state!.guardPlus(
      () async {
        final dataSource = ref.read(repositorySearchDataSourceProvider);
        final result = await dataSource.search(
          query: query,
          perPage: 50,
          page: _currentPage + 1,
        );
        switch (result) {
          case Failure():
            ref.invalidate(repositorySearchTotalCountProvider);
            throw RepositorySearchFetchException(
              message: '検索実行中にエラーが発生しました',
              exception: result.exception,
            );
          case Success():
            // 初回のみ検索結果の件数をセットする
            if (_currentPage == 0) {
              ref.read(repositorySearchTotalCountProvider.notifier).value =
                  result.value.count;
            }
            _currentPage++;
            return [
              if (state?.valueOrNull != null) ...state!.valueOrNull!,
              ...result.value.items,
            ];
        }
      },
    );
  }
}

class RepositorySearchFetchException implements Exception {
  RepositorySearchFetchException({
    required this.message,
    required this.exception,
  });

  final String message;
  final Exception exception;

  @override
  String toString() => 'RepositorySearchFetchException: $message';
}

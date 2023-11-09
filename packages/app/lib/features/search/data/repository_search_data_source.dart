import 'package:bff_api_types/bff_api_types.dart';
import 'package:github_repository_search/core/api/bff_api_client.dart';
import 'package:github_repository_search/core/foundation/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_search_data_source.g.dart';

@riverpod
RepositorySearchDataSource repositorySearchDataSource(
  RepositorySearchDataSourceRef ref,
) =>
    RepositorySearchDataSource(
      client: ref.watch(bffApiClientProvider),
    );

class RepositorySearchDataSource {
  RepositorySearchDataSource({required BffApiClient client}) : _client = client;

  final BffApiClient _client;

  Future<Result<RepositorySearchResponse, Exception>> search({
    required String query,
    required int page,
    required int perPage,
  }) async {
    try {
      final result = await _client.search(
        query: query,
        page: page,
        perPage: perPage,
      );
      return Success(result);
    } on Exception catch (exception, stackTrace) {
      return Failure(exception, stackTrace);
    }
  }
}

import 'package:bff_api_types/bff_api_types.dart';
import 'package:dio/dio.dart';
import 'package:github_repository_search/core/api/dio.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bff_api_client.g.dart';

@Riverpod(keepAlive: true)
BffApiClient bffApiClient(BffApiClientRef ref) =>
    BffApiClient(ref.watch(dioProvider));

@RestApi()
abstract class BffApiClient {
  factory BffApiClient(Dio dio, {String baseUrl}) = _BffApiClient;

  // 認証なしなので、1分あたり10回までリクエスト可能
  // OAuth認証を使うと、1分あたり30回までリクエスト可能
  // https://docs.github.com/en/rest/search#rate-limit
  @GET('/search/repositories')
  Future<RepositorySearchResponse> search({
    /// application/vnd.github+json
    @Header('accept') String accept = 'application/vnd.github.v3+json',
    @Header('User-Agent') String userAgent = 'github_repository_search',
    @Query('query') required String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}

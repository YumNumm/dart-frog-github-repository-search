import 'package:dio/dio.dart';
import 'package:github_api/src/model/search_response.dart';
import 'package:retrofit/http.dart';

part 'repository_api_client.g.dart';

@RestApi(baseUrl: 'https://api.github.com')
abstract class RepositoryApiClient {
  factory RepositoryApiClient(
    Dio dio, {
    String baseUrl,
  }) = _RepositoryApiClient;

  // 認証なしなので、1分あたり10回までリクエスト可能
  // OAuth認証を使うと、1分あたり30回までリクエスト可能
  // https://docs.github.com/en/rest/search#rate-limit
  @GET('/search/repositories')
  Future<SearchResponse> fetch({
    /// application/vnd.github+json
    @Header('accept') required String accept,
    @Header('User-Agent') required String userAgent,
    @Query('q') required String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}

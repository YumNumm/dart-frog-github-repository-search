import 'package:github_api/github_api.dart';
import 'package:github_api/model/search_response.dart';
import 'package:retrofit/retrofit.dart';

part 'repository_search_api_client.g.dart';

@RestApi(baseUrl: 'https://api.github.com')
abstract class RepositorySearchApiClient {
  factory RepositorySearchApiClient(
    Dio dio, {
    String baseUrl,
  }) = _RepositorySearchApiClient;

  // 認証なしなので、1分あたり10回までリクエスト可能
  // OAuth認証を使うと、1分あたり30回までリクエスト可能
  // https://docs.github.com/en/rest/search#rate-limit
  @GET('/search/repositories')
  Future<SearchResponse> search({
    /// application/vnd.github+json
    @Query('q') required String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}

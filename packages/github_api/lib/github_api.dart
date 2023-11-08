import 'package:dio/dio.dart';
import 'package:github_api/repository_search_api_client.dart';

export 'package:dio/dio.dart' hide Response;

class GitHubApi {
  GitHubApi({required Dio dio}) : _dio = dio;

  final Dio _dio;

  RepositorySearchApiClient get repositorySearch => RepositorySearchApiClient(
        _dio,
      );
}

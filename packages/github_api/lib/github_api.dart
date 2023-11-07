import 'package:dio/dio.dart';
import 'package:github_api/src/repository_api_client.dart';

export 'package:dio/dio.dart' hide Response;

export 'src/model/search_response.dart';
export 'src/model/search_response/search_response_item.dart';
export 'src/model/search_response/search_response_license.dart';
export 'src/model/search_response/search_response_owner.dart';
export 'src/repository_api_client.dart';

class GitHubApi {
  GitHubApi({required Dio dio}) : _dio = dio;

  final Dio _dio;

  RepositoryApiClient get repositorySearch => RepositoryApiClient(
        _dio,
      );
}

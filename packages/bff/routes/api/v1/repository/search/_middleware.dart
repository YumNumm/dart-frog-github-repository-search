import 'dart:io';

import 'package:bff_api_types/bff_api_types.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';
import 'package:github_api/model/search_response.dart';

import '../../../../_middleware.dart';

RepositorySearchCacheStore? _cacheStore;

Handler middleware(Handler handler) {
  // injection
  return (context) async {
    return await handler
        .use(
          provider<GitHubApi>(
            (context) {
              final config = context.read<BffConfiguration>();
              final dio = Dio(
                BaseOptions(
                  headers: {
                    HttpHeaders.authorizationHeader:
                        'Bearer ${config.githubApiToken}',
                    HttpHeaders.acceptHeader: 'application/vnd.github.v3+json',
                    HttpHeaders.userAgentHeader: 'dart_frog',
                  },
                ),
              );
              return GitHubApi(
                dio: dio,
              );
            },
          ),
        )
        .use(
          provider<RepositorySearchCacheStore>(
            (context) => _cacheStore ??= RepositorySearchCacheStore(),
          ),
        )
        .call(context);
  };
}

class RepositorySearchCacheStore {
  final Map<RepositorySearchRequest, SearchResponse> cache = {};

  void add(RepositorySearchRequest request, SearchResponse response) {
    cache[request] = response;
  }

  SearchResponse? get(RepositorySearchRequest request) {
    return cache[request];
  }
}

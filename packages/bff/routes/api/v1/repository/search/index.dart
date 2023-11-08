import 'package:bff_api_types/bff_api_types.dart' as types;
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';
import 'package:github_api/model/search_response.dart';

import '../../../../../src/util/method_check.dart';

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  final allowMethods = [HttpMethod.get];
  methodCheck(request, allowMethods);

  final req =
      types.RepositorySearchRequest.fromJson(request.uri.queryParameters);

  final api = context.read<GitHubApi>();
  final result = await api.repositorySearch.search(
    query: req.query,
    sort: req.sort?.value,
    order: req.order?.name,
    page: req.page,
    perPage: req.perPage,
  );
  return Response.json(
    body: result.toRepositorySearchResponse.toJson(),
  );
}

extension SearchResponseEx on SearchResponse {
  types.RepositorySearchResponse get toRepositorySearchResponse {
    return types.RepositorySearchResponse(
      count: totalCount,
      items: items
          .map(
            (e) => types.RepositorySearchResponseItem(
              createdAt: e.createdAt,
              description: e.description,
              fork: e.fork,
              forks: e.forks,
              fullName: e.fullName,
              htmlUrl: e.htmlUrl,
              language: e.language,
              mirrorUrl: e.mirrorUrl,
              openIssues: e.openIssues,
              owner: types.RepositorySearchResponseOwnder(
                avatarUrl: e.owner.avatarUrl,
                login: e.owner.login,
                url: e.owner.url,
              ),
              private: e.private,
              pushedAt: e.pushedAt,
              topics: e.topics,
              updatedAt: e.updatedAt,
              watchers: e.watchers,
              license: e.license != null
                  ? types.RepositorySearchResponseLicense(
                      key: e.license!.key,
                      name: e.license!.name,
                      url: e.license!.url,
                    )
                  : null,
            ),
          )
          .toList(),
    );
  }
}

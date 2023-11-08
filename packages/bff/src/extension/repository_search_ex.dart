import 'package:bff_api_types/bff_api_types.dart' as types;
import 'package:github_api/model/search_response.dart';

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

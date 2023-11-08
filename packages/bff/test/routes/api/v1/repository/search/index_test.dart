import 'package:bff_api_types/bff_api_types.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';
import 'package:github_api/model/search_response.dart';
import 'package:github_api/model/search_response/search_response_item.dart';
import 'package:github_api/model/search_response/search_response_owner.dart';
import 'package:github_api/repository_search_api_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockUri extends Mock implements Uri {}

class _MockGitHubApi extends Mock implements GitHubApi {}

class _MockRepositoryApiClient extends Mock
    implements RepositorySearchApiClient {}

void main() {
  late RequestContext context;
  late Request request;
  late Uri uri;
  late GitHubApi gitHubApi;
  late RepositorySearchApiClient repositoryApiClient;

  const req = RepositorySearchRequest(
    query: 'test',
  );
  setUpAll(() => registerFallbackValue(req));

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    uri = _MockUri();
    gitHubApi = _MockGitHubApi();
    repositoryApiClient = _MockRepositoryApiClient();

    when(() => context.request).thenReturn(request);
    when(() => request.uri).thenReturn(uri);
    when(() => gitHubApi.repositorySearch).thenReturn(repositoryApiClient);
  });

  test(
    'GitHub API Clientで、検索結果を取得していること',
    () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      when(request.json).thenAnswer(
        (_) async => req.toJson(),
      );
      when(
        () => repositoryApiClient.search(
          query: any(named: 'query'),
        ),
      ).thenAnswer(
        (_) {
          return Future.value(
            SearchResponse(
              totalCount: 1,
              incompleteResults: true,
              items: [
                SearchResponseItem(
                  id: 0,
                  nodeId: 'test',
                  size: 1,
                  stargazersCount: 0,
                  watchersCount: 0,
                  forksCount: 0,
                  watchers: 0,
                  archived: false,
                  hasDownloads: true,
                  hasIssues: true,
                  hasPages: true,
                  hasProjects: true,
                  hasWiki: true,
                  homepage: 'test',
                  license: null,
                  owner: const SearchResponseOwner(
                    avatarUrl: 'test',
                    login: 'test',
                    url: 'test',
                    gravatarId: 'test',
                    htmlUrl: 'test',
                    id: 0,
                    nodeId: 'test',
                  ),
                  createdAt: DateTime.now(),
                  description: 'test',
                  fork: false,
                  forks: 1,
                  fullName: 'test',
                  htmlUrl: 'test',
                  language: 'test',
                  mirrorUrl: 'test',
                  openIssues: 1,
                  openIssuesCount: 1,
                  private: false,
                  pushedAt: DateTime.now(),
                  topics: ['test'],
                  updatedAt: DateTime.now(),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

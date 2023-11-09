import 'package:bff_api_types/bff_api_types.dart' as types;
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';

import '../../../../../src/extension/repository_search_ex.dart';
import '../../../../../src/util/method_check.dart';
import '_middleware.dart';

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  final allowMethods = [HttpMethod.get];
  methodCheck(request, allowMethods);

  final req =
      types.RepositorySearchRequest.fromJson(request.uri.queryParameters);

  final cacheStore = context.read<RepositorySearchCacheStore>();
  final cachedResponse = cacheStore.get(req);
  if (cachedResponse != null) {
    return Response.json(
      body: cachedResponse.toRepositorySearchResponse.toJson(),
    );
  }

  final api = context.read<GitHubApi>();
  final result = await api.repositorySearch.search(
    query: req.query,
    sort: req.sort?.value,
    order: req.order?.name,
    page: req.page,
    perPage: req.perPage,
  );
  cacheStore.add(req, result);
  return Response.json(
    body: result.toRepositorySearchResponse.toJson(),
  );
}

import 'package:bff_api_types/bff_api_types.dart' as types;
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';

import '../../../../../src/extension/repository_search_ex.dart';
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

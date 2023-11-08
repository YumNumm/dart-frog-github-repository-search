import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/model/search_response/search_response_license.dart';
import 'package:github_api/model/search_response/search_response_owner.dart';

part 'search_response_item.freezed.dart';
part 'search_response_item.g.dart';

@freezed
class SearchResponseItem with _$SearchResponseItem {
  const factory SearchResponseItem({
    required int id,
    required String nodeId,
    required String fullName,
    required bool private,
    required String htmlUrl,
    required String? description,
    required bool fork,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime pushedAt,
    required int size,
    required int stargazersCount,
    required int watchersCount,
    required String? language,
    required int forksCount,
    required int openIssuesCount,
    required int forks,
    required int openIssues,
    required int watchers,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasPages,
    required bool hasWiki,
    required bool hasDownloads,
    required bool archived,
    required SearchResponseLicense? license,
    required SearchResponseOwner owner,
    required String? homepage,
    required String? mirrorUrl,
    required List<String> topics,
  }) = _SearchResponseItem;

  factory SearchResponseItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseItemFromJson(json);
}

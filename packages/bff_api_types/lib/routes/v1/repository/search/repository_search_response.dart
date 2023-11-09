import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_search_response.freezed.dart';
part 'repository_search_response.g.dart';

@freezed
class RepositorySearchResponse with _$RepositorySearchResponse {
  const factory RepositorySearchResponse({
    required int count,
    required List<RepositorySearchResponseItem> items,
  }) = _RepositorySearchResponse;

  factory RepositorySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchResponseFromJson(json);
}

@freezed
class RepositorySearchResponseItem with _$RepositorySearchResponseItem {
  const factory RepositorySearchResponseItem({
    required String fullName,
    required RepositorySearchResponseOwnder? owner,
    required bool private,
    required String htmlUrl,
    String? description,
    required bool fork,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime pushedAt,
    required String? language,
    required int forks,
    required int openIssues,
    required int watchers,
    required int stars,
    required List<String> topics,
    required String? mirrorUrl,
    RepositorySearchResponseLicense? license,
  }) = _RepositorySearchResponseItem;

  factory RepositorySearchResponseItem.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchResponseItemFromJson(json);
}

@freezed
class RepositorySearchResponseOwnder with _$RepositorySearchResponseOwnder {
  const factory RepositorySearchResponseOwnder({
    required String login,
    required String avatarUrl,
    required String url,
  }) = _RepositorySearchResponseOwnder;

  factory RepositorySearchResponseOwnder.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchResponseOwnderFromJson(json);
}

@freezed
class RepositorySearchResponseLicense with _$RepositorySearchResponseLicense {
  const factory RepositorySearchResponseLicense({
    required String key,
    required String name,
    required String? url,
  }) = _RepositorySearchResponseLicense;

  factory RepositorySearchResponseLicense.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchResponseLicenseFromJson(json);
}

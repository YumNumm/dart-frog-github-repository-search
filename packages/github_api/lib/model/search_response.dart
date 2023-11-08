import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/model/search_response/search_response_item.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<SearchResponseItem> items,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

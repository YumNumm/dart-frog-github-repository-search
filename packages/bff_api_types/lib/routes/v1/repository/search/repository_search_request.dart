import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_search_request.freezed.dart';
part 'repository_search_request.g.dart';

// cf. https://docs.github.com/en/free-pro-team@latest/rest/search/search?apiVersion=2022-11-28#search-repositories--parameters
@freezed
class RepositorySearchRequest with _$RepositorySearchRequest {
  const factory RepositorySearchRequest({
    required String query,
    @Default(RepositorySearchRequestSort.bestMatch)
    RepositorySearchRequestSort? sort,
    @Default(RepositorySearchRequestOrder.desc)
    RepositorySearchRequestOrder? order,
    // max 100
    @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
    @Default(30)
    int? perPage,
    @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
    @Default(1)
    int? page,
  }) = _RepositorySearchRequest;

  factory RepositorySearchRequest.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchRequestFromJson(json);
}

@JsonEnum(valueField: 'value')
enum RepositorySearchRequestSort {
  // デフォルト
  bestMatch(null),
  stars('stars'),
  forks('forks'),
  helpWantedIssues('help-wanted-issues'),
  updated('updated'),
  ;

  const RepositorySearchRequestSort(this.value);
  final String? value;
}

enum RepositorySearchRequestOrder {
  desc,
  asc,
  ;
}

int? _intNullableFromJson(String? json) => int.tryParse(json ?? '');

String? _intNullableToJson(int? value) => value?.toString();

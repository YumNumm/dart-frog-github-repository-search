// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'repository_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositorySearchRequestImpl _$$RepositorySearchRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RepositorySearchRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$RepositorySearchRequestImpl(
          query: $checkedConvert('query', (v) => v as String),
          sort: $checkedConvert(
              'sort',
              (v) =>
                  $enumDecodeNullable(
                      _$RepositorySearchRequestSortEnumMap, v) ??
                  RepositorySearchRequestSort.bestMatch),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(
                      _$RepositorySearchRequestOrderEnumMap, v) ??
                  RepositorySearchRequestOrder.desc),
          perPage: $checkedConvert('per_page',
              (v) => v == null ? 30 : _intNullableFromJson(v as String?)),
          page: $checkedConvert('page',
              (v) => v == null ? 1 : _intNullableFromJson(v as String?)),
        );
        return val;
      },
      fieldKeyMap: const {'perPage': 'per_page'},
    );

Map<String, dynamic> _$$RepositorySearchRequestImplToJson(
        _$RepositorySearchRequestImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'sort': _$RepositorySearchRequestSortEnumMap[instance.sort],
      'order': _$RepositorySearchRequestOrderEnumMap[instance.order],
      'per_page': _intNullableToJson(instance.perPage),
      'page': _intNullableToJson(instance.page),
    };

const _$RepositorySearchRequestSortEnumMap = {
  RepositorySearchRequestSort.bestMatch: null,
  RepositorySearchRequestSort.stars: 'stars',
  RepositorySearchRequestSort.forks: 'forks',
  RepositorySearchRequestSort.helpWantedIssues: 'help-wanted-issues',
  RepositorySearchRequestSort.updated: 'updated',
};

const _$RepositorySearchRequestOrderEnumMap = {
  RepositorySearchRequestOrder.desc: 'desc',
  RepositorySearchRequestOrder.asc: 'asc',
};

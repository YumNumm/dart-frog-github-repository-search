// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SearchResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SearchResponseImpl(
          totalCount: $checkedConvert('total_count', (v) => v as int),
          incompleteResults:
              $checkedConvert('incomplete_results', (v) => v as bool),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      SearchResponseItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalCount': 'total_count',
        'incompleteResults': 'incomplete_results'
      },
    );

Map<String, dynamic> _$$SearchResponseImplToJson(
        _$SearchResponseImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

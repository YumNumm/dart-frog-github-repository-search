// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'api_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorResponseImpl _$$ApiErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ApiErrorResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$ApiErrorResponseImpl(
          type: $checkedConvert('type', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String),
          tip: $checkedConvert('tip', (v) => v as String?),
          exception: $checkedConvert('exception', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ApiErrorResponseImplToJson(
        _$ApiErrorResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'tip': instance.tip,
      'exception': instance.exception,
    };

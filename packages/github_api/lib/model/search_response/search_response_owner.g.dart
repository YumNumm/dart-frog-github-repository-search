// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'search_response_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseOwnerImpl _$$SearchResponseOwnerImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SearchResponseOwnerImpl',
      json,
      ($checkedConvert) {
        final val = _$SearchResponseOwnerImpl(
          login: $checkedConvert('login', (v) => v as String),
          id: $checkedConvert('id', (v) => v as int),
          nodeId: $checkedConvert('node_id', (v) => v as String),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          gravatarId: $checkedConvert('gravatar_id', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String),
          htmlUrl: $checkedConvert('html_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'nodeId': 'node_id',
        'avatarUrl': 'avatar_url',
        'gravatarId': 'gravatar_id',
        'htmlUrl': 'html_url'
      },
    );

Map<String, dynamic> _$$SearchResponseOwnerImplToJson(
        _$SearchResponseOwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_id': instance.gravatarId,
      'url': instance.url,
      'html_url': instance.htmlUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'repository_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositorySearchResponseImpl _$$RepositorySearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RepositorySearchResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$RepositorySearchResponseImpl(
          count: $checkedConvert('count', (v) => v as int),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => RepositorySearchResponseItem.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RepositorySearchResponseImplToJson(
        _$RepositorySearchResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items,
    };

_$RepositorySearchResponseItemImpl _$$RepositorySearchResponseItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RepositorySearchResponseItemImpl',
      json,
      ($checkedConvert) {
        final val = _$RepositorySearchResponseItemImpl(
          fullName: $checkedConvert('full_name', (v) => v as String),
          owner: $checkedConvert(
              'owner',
              (v) => v == null
                  ? null
                  : RepositorySearchResponseOwnder.fromJson(
                      v as Map<String, dynamic>)),
          private: $checkedConvert('private', (v) => v as bool),
          htmlUrl: $checkedConvert('html_url', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          fork: $checkedConvert('fork', (v) => v as bool),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          pushedAt:
              $checkedConvert('pushed_at', (v) => DateTime.parse(v as String)),
          language: $checkedConvert('language', (v) => v as String?),
          forks: $checkedConvert('forks', (v) => v as int),
          openIssues: $checkedConvert('open_issues', (v) => v as int),
          watchers: $checkedConvert('watchers', (v) => v as int),
          topics: $checkedConvert('topics',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          mirrorUrl: $checkedConvert('mirror_url', (v) => v as String?),
          license: $checkedConvert(
              'license',
              (v) => v == null
                  ? null
                  : RepositorySearchResponseLicense.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'htmlUrl': 'html_url',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'pushedAt': 'pushed_at',
        'openIssues': 'open_issues',
        'mirrorUrl': 'mirror_url'
      },
    );

Map<String, dynamic> _$$RepositorySearchResponseItemImplToJson(
        _$RepositorySearchResponseItemImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'owner': instance.owner,
      'private': instance.private,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'pushed_at': instance.pushedAt.toIso8601String(),
      'language': instance.language,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
      'watchers': instance.watchers,
      'topics': instance.topics,
      'mirror_url': instance.mirrorUrl,
      'license': instance.license,
    };

_$RepositorySearchResponseOwnderImpl
    _$$RepositorySearchResponseOwnderImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$RepositorySearchResponseOwnderImpl',
          json,
          ($checkedConvert) {
            final val = _$RepositorySearchResponseOwnderImpl(
              login: $checkedConvert('login', (v) => v as String),
              avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
              url: $checkedConvert('url', (v) => v as String),
            );
            return val;
          },
          fieldKeyMap: const {'avatarUrl': 'avatar_url'},
        );

Map<String, dynamic> _$$RepositorySearchResponseOwnderImplToJson(
        _$RepositorySearchResponseOwnderImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
    };

_$RepositorySearchResponseLicenseImpl
    _$$RepositorySearchResponseLicenseImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$RepositorySearchResponseLicenseImpl',
          json,
          ($checkedConvert) {
            final val = _$RepositorySearchResponseLicenseImpl(
              key: $checkedConvert('key', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              url: $checkedConvert('url', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$RepositorySearchResponseLicenseImplToJson(
        _$RepositorySearchResponseLicenseImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'url': instance.url,
    };

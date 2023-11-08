// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseOwner _$SearchResponseOwnerFromJson(Map<String, dynamic> json) {
  return _SearchResponseOwner.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseOwner {
  String get login => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get gravatarId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseOwnerCopyWith<SearchResponseOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseOwnerCopyWith<$Res> {
  factory $SearchResponseOwnerCopyWith(
          SearchResponseOwner value, $Res Function(SearchResponseOwner) then) =
      _$SearchResponseOwnerCopyWithImpl<$Res, SearchResponseOwner>;
  @useResult
  $Res call(
      {String login,
      int id,
      String nodeId,
      String avatarUrl,
      String? gravatarId,
      String url,
      String htmlUrl});
}

/// @nodoc
class _$SearchResponseOwnerCopyWithImpl<$Res, $Val extends SearchResponseOwner>
    implements $SearchResponseOwnerCopyWith<$Res> {
  _$SearchResponseOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = null,
    Object? avatarUrl = null,
    Object? gravatarId = freezed,
    Object? url = null,
    Object? htmlUrl = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResponseOwnerImplCopyWith<$Res>
    implements $SearchResponseOwnerCopyWith<$Res> {
  factory _$$SearchResponseOwnerImplCopyWith(_$SearchResponseOwnerImpl value,
          $Res Function(_$SearchResponseOwnerImpl) then) =
      __$$SearchResponseOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login,
      int id,
      String nodeId,
      String avatarUrl,
      String? gravatarId,
      String url,
      String htmlUrl});
}

/// @nodoc
class __$$SearchResponseOwnerImplCopyWithImpl<$Res>
    extends _$SearchResponseOwnerCopyWithImpl<$Res, _$SearchResponseOwnerImpl>
    implements _$$SearchResponseOwnerImplCopyWith<$Res> {
  __$$SearchResponseOwnerImplCopyWithImpl(_$SearchResponseOwnerImpl _value,
      $Res Function(_$SearchResponseOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = null,
    Object? avatarUrl = null,
    Object? gravatarId = freezed,
    Object? url = null,
    Object? htmlUrl = null,
  }) {
    return _then(_$SearchResponseOwnerImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: freezed == gravatarId
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResponseOwnerImpl implements _SearchResponseOwner {
  const _$SearchResponseOwnerImpl(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.gravatarId,
      required this.url,
      required this.htmlUrl});

  factory _$SearchResponseOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseOwnerImplFromJson(json);

  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String avatarUrl;
  @override
  final String? gravatarId;
  @override
  final String url;
  @override
  final String htmlUrl;

  @override
  String toString() {
    return 'SearchResponseOwner(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseOwnerImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, login, id, nodeId, avatarUrl, gravatarId, url, htmlUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseOwnerImplCopyWith<_$SearchResponseOwnerImpl> get copyWith =>
      __$$SearchResponseOwnerImplCopyWithImpl<_$SearchResponseOwnerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseOwnerImplToJson(
      this,
    );
  }
}

abstract class _SearchResponseOwner implements SearchResponseOwner {
  const factory _SearchResponseOwner(
      {required final String login,
      required final int id,
      required final String nodeId,
      required final String avatarUrl,
      required final String? gravatarId,
      required final String url,
      required final String htmlUrl}) = _$SearchResponseOwnerImpl;

  factory _SearchResponseOwner.fromJson(Map<String, dynamic> json) =
      _$SearchResponseOwnerImpl.fromJson;

  @override
  String get login;
  @override
  int get id;
  @override
  String get nodeId;
  @override
  String get avatarUrl;
  @override
  String? get gravatarId;
  @override
  String get url;
  @override
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$SearchResponseOwnerImplCopyWith<_$SearchResponseOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

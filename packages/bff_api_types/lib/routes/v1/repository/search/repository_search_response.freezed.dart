// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositorySearchResponse _$RepositorySearchResponseFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchResponse {
  int get count => throw _privateConstructorUsedError;
  List<RepositorySearchResponseItem> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchResponseCopyWith<RepositorySearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchResponseCopyWith<$Res> {
  factory $RepositorySearchResponseCopyWith(RepositorySearchResponse value,
          $Res Function(RepositorySearchResponse) then) =
      _$RepositorySearchResponseCopyWithImpl<$Res, RepositorySearchResponse>;
  @useResult
  $Res call({int count, List<RepositorySearchResponseItem> items});
}

/// @nodoc
class _$RepositorySearchResponseCopyWithImpl<$Res,
        $Val extends RepositorySearchResponse>
    implements $RepositorySearchResponseCopyWith<$Res> {
  _$RepositorySearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositorySearchResponseItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchResponseImplCopyWith<$Res>
    implements $RepositorySearchResponseCopyWith<$Res> {
  factory _$$RepositorySearchResponseImplCopyWith(
          _$RepositorySearchResponseImpl value,
          $Res Function(_$RepositorySearchResponseImpl) then) =
      __$$RepositorySearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<RepositorySearchResponseItem> items});
}

/// @nodoc
class __$$RepositorySearchResponseImplCopyWithImpl<$Res>
    extends _$RepositorySearchResponseCopyWithImpl<$Res,
        _$RepositorySearchResponseImpl>
    implements _$$RepositorySearchResponseImplCopyWith<$Res> {
  __$$RepositorySearchResponseImplCopyWithImpl(
      _$RepositorySearchResponseImpl _value,
      $Res Function(_$RepositorySearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_$RepositorySearchResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositorySearchResponseItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchResponseImpl implements _RepositorySearchResponse {
  const _$RepositorySearchResponseImpl(
      {required this.count,
      required final List<RepositorySearchResponseItem> items})
      : _items = items;

  factory _$RepositorySearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositorySearchResponseImplFromJson(json);

  @override
  final int count;
  final List<RepositorySearchResponseItem> _items;
  @override
  List<RepositorySearchResponseItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RepositorySearchResponse(count: $count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchResponseImplCopyWith<_$RepositorySearchResponseImpl>
      get copyWith => __$$RepositorySearchResponseImplCopyWithImpl<
          _$RepositorySearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchResponseImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchResponse implements RepositorySearchResponse {
  const factory _RepositorySearchResponse(
          {required final int count,
          required final List<RepositorySearchResponseItem> items}) =
      _$RepositorySearchResponseImpl;

  factory _RepositorySearchResponse.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchResponseImpl.fromJson;

  @override
  int get count;
  @override
  List<RepositorySearchResponseItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchResponseImplCopyWith<_$RepositorySearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RepositorySearchResponseItem _$RepositorySearchResponseItemFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchResponseItem.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchResponseItem {
  String get fullName => throw _privateConstructorUsedError;
  RepositorySearchResponseOwnder? get owner =>
      throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get fork => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get pushedAt => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get openIssues => throw _privateConstructorUsedError;
  int get watchers => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
  String? get mirrorUrl => throw _privateConstructorUsedError;
  RepositorySearchResponseLicense? get license =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchResponseItemCopyWith<RepositorySearchResponseItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchResponseItemCopyWith<$Res> {
  factory $RepositorySearchResponseItemCopyWith(
          RepositorySearchResponseItem value,
          $Res Function(RepositorySearchResponseItem) then) =
      _$RepositorySearchResponseItemCopyWithImpl<$Res,
          RepositorySearchResponseItem>;
  @useResult
  $Res call(
      {String fullName,
      RepositorySearchResponseOwnder? owner,
      bool private,
      String htmlUrl,
      String? description,
      bool fork,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime pushedAt,
      String? language,
      int forks,
      int openIssues,
      int watchers,
      List<String> topics,
      String? mirrorUrl,
      RepositorySearchResponseLicense? license});

  $RepositorySearchResponseOwnderCopyWith<$Res>? get owner;
  $RepositorySearchResponseLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$RepositorySearchResponseItemCopyWithImpl<$Res,
        $Val extends RepositorySearchResponseItem>
    implements $RepositorySearchResponseItemCopyWith<$Res> {
  _$RepositorySearchResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = freezed,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pushedAt = null,
    Object? language = freezed,
    Object? forks = null,
    Object? openIssues = null,
    Object? watchers = null,
    Object? topics = null,
    Object? mirrorUrl = freezed,
    Object? license = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepositorySearchResponseOwnder?,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: null == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mirrorUrl: freezed == mirrorUrl
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as RepositorySearchResponseLicense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositorySearchResponseOwnderCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $RepositorySearchResponseOwnderCopyWith<$Res>(_value.owner!,
        (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositorySearchResponseLicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $RepositorySearchResponseLicenseCopyWith<$Res>(_value.license!,
        (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositorySearchResponseItemImplCopyWith<$Res>
    implements $RepositorySearchResponseItemCopyWith<$Res> {
  factory _$$RepositorySearchResponseItemImplCopyWith(
          _$RepositorySearchResponseItemImpl value,
          $Res Function(_$RepositorySearchResponseItemImpl) then) =
      __$$RepositorySearchResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      RepositorySearchResponseOwnder? owner,
      bool private,
      String htmlUrl,
      String? description,
      bool fork,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime pushedAt,
      String? language,
      int forks,
      int openIssues,
      int watchers,
      List<String> topics,
      String? mirrorUrl,
      RepositorySearchResponseLicense? license});

  @override
  $RepositorySearchResponseOwnderCopyWith<$Res>? get owner;
  @override
  $RepositorySearchResponseLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$$RepositorySearchResponseItemImplCopyWithImpl<$Res>
    extends _$RepositorySearchResponseItemCopyWithImpl<$Res,
        _$RepositorySearchResponseItemImpl>
    implements _$$RepositorySearchResponseItemImplCopyWith<$Res> {
  __$$RepositorySearchResponseItemImplCopyWithImpl(
      _$RepositorySearchResponseItemImpl _value,
      $Res Function(_$RepositorySearchResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = freezed,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pushedAt = null,
    Object? language = freezed,
    Object? forks = null,
    Object? openIssues = null,
    Object? watchers = null,
    Object? topics = null,
    Object? mirrorUrl = freezed,
    Object? license = freezed,
  }) {
    return _then(_$RepositorySearchResponseItemImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepositorySearchResponseOwnder?,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: null == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mirrorUrl: freezed == mirrorUrl
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as RepositorySearchResponseLicense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchResponseItemImpl
    implements _RepositorySearchResponseItem {
  const _$RepositorySearchResponseItemImpl(
      {required this.fullName,
      required this.owner,
      required this.private,
      required this.htmlUrl,
      this.description,
      required this.fork,
      required this.createdAt,
      required this.updatedAt,
      required this.pushedAt,
      required this.language,
      required this.forks,
      required this.openIssues,
      required this.watchers,
      required final List<String> topics,
      required this.mirrorUrl,
      this.license})
      : _topics = topics;

  factory _$RepositorySearchResponseItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RepositorySearchResponseItemImplFromJson(json);

  @override
  final String fullName;
  @override
  final RepositorySearchResponseOwnder? owner;
  @override
  final bool private;
  @override
  final String htmlUrl;
  @override
  final String? description;
  @override
  final bool fork;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime pushedAt;
  @override
  final String? language;
  @override
  final int forks;
  @override
  final int openIssues;
  @override
  final int watchers;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final String? mirrorUrl;
  @override
  final RepositorySearchResponseLicense? license;

  @override
  String toString() {
    return 'RepositorySearchResponseItem(fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, language: $language, forks: $forks, openIssues: $openIssues, watchers: $watchers, topics: $topics, mirrorUrl: $mirrorUrl, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchResponseItemImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pushedAt, pushedAt) ||
                other.pushedAt == pushedAt) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues) &&
            (identical(other.watchers, watchers) ||
                other.watchers == watchers) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.mirrorUrl, mirrorUrl) ||
                other.mirrorUrl == mirrorUrl) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      owner,
      private,
      htmlUrl,
      description,
      fork,
      createdAt,
      updatedAt,
      pushedAt,
      language,
      forks,
      openIssues,
      watchers,
      const DeepCollectionEquality().hash(_topics),
      mirrorUrl,
      license);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchResponseItemImplCopyWith<
          _$RepositorySearchResponseItemImpl>
      get copyWith => __$$RepositorySearchResponseItemImplCopyWithImpl<
          _$RepositorySearchResponseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchResponseItemImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchResponseItem
    implements RepositorySearchResponseItem {
  const factory _RepositorySearchResponseItem(
          {required final String fullName,
          required final RepositorySearchResponseOwnder? owner,
          required final bool private,
          required final String htmlUrl,
          final String? description,
          required final bool fork,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final DateTime pushedAt,
          required final String? language,
          required final int forks,
          required final int openIssues,
          required final int watchers,
          required final List<String> topics,
          required final String? mirrorUrl,
          final RepositorySearchResponseLicense? license}) =
      _$RepositorySearchResponseItemImpl;

  factory _RepositorySearchResponseItem.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchResponseItemImpl.fromJson;

  @override
  String get fullName;
  @override
  RepositorySearchResponseOwnder? get owner;
  @override
  bool get private;
  @override
  String get htmlUrl;
  @override
  String? get description;
  @override
  bool get fork;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get pushedAt;
  @override
  String? get language;
  @override
  int get forks;
  @override
  int get openIssues;
  @override
  int get watchers;
  @override
  List<String> get topics;
  @override
  String? get mirrorUrl;
  @override
  RepositorySearchResponseLicense? get license;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchResponseItemImplCopyWith<
          _$RepositorySearchResponseItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RepositorySearchResponseOwnder _$RepositorySearchResponseOwnderFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchResponseOwnder.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchResponseOwnder {
  String get login => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchResponseOwnderCopyWith<RepositorySearchResponseOwnder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchResponseOwnderCopyWith<$Res> {
  factory $RepositorySearchResponseOwnderCopyWith(
          RepositorySearchResponseOwnder value,
          $Res Function(RepositorySearchResponseOwnder) then) =
      _$RepositorySearchResponseOwnderCopyWithImpl<$Res,
          RepositorySearchResponseOwnder>;
  @useResult
  $Res call({String login, String avatarUrl, String url});
}

/// @nodoc
class _$RepositorySearchResponseOwnderCopyWithImpl<$Res,
        $Val extends RepositorySearchResponseOwnder>
    implements $RepositorySearchResponseOwnderCopyWith<$Res> {
  _$RepositorySearchResponseOwnderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchResponseOwnderImplCopyWith<$Res>
    implements $RepositorySearchResponseOwnderCopyWith<$Res> {
  factory _$$RepositorySearchResponseOwnderImplCopyWith(
          _$RepositorySearchResponseOwnderImpl value,
          $Res Function(_$RepositorySearchResponseOwnderImpl) then) =
      __$$RepositorySearchResponseOwnderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String avatarUrl, String url});
}

/// @nodoc
class __$$RepositorySearchResponseOwnderImplCopyWithImpl<$Res>
    extends _$RepositorySearchResponseOwnderCopyWithImpl<$Res,
        _$RepositorySearchResponseOwnderImpl>
    implements _$$RepositorySearchResponseOwnderImplCopyWith<$Res> {
  __$$RepositorySearchResponseOwnderImplCopyWithImpl(
      _$RepositorySearchResponseOwnderImpl _value,
      $Res Function(_$RepositorySearchResponseOwnderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? url = null,
  }) {
    return _then(_$RepositorySearchResponseOwnderImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchResponseOwnderImpl
    implements _RepositorySearchResponseOwnder {
  const _$RepositorySearchResponseOwnderImpl(
      {required this.login, required this.avatarUrl, required this.url});

  factory _$RepositorySearchResponseOwnderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RepositorySearchResponseOwnderImplFromJson(json);

  @override
  final String login;
  @override
  final String avatarUrl;
  @override
  final String url;

  @override
  String toString() {
    return 'RepositorySearchResponseOwnder(login: $login, avatarUrl: $avatarUrl, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchResponseOwnderImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchResponseOwnderImplCopyWith<
          _$RepositorySearchResponseOwnderImpl>
      get copyWith => __$$RepositorySearchResponseOwnderImplCopyWithImpl<
          _$RepositorySearchResponseOwnderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchResponseOwnderImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchResponseOwnder
    implements RepositorySearchResponseOwnder {
  const factory _RepositorySearchResponseOwnder(
      {required final String login,
      required final String avatarUrl,
      required final String url}) = _$RepositorySearchResponseOwnderImpl;

  factory _RepositorySearchResponseOwnder.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchResponseOwnderImpl.fromJson;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchResponseOwnderImplCopyWith<
          _$RepositorySearchResponseOwnderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RepositorySearchResponseLicense _$RepositorySearchResponseLicenseFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchResponseLicense.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchResponseLicense {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchResponseLicenseCopyWith<RepositorySearchResponseLicense>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchResponseLicenseCopyWith<$Res> {
  factory $RepositorySearchResponseLicenseCopyWith(
          RepositorySearchResponseLicense value,
          $Res Function(RepositorySearchResponseLicense) then) =
      _$RepositorySearchResponseLicenseCopyWithImpl<$Res,
          RepositorySearchResponseLicense>;
  @useResult
  $Res call({String key, String name, String? url});
}

/// @nodoc
class _$RepositorySearchResponseLicenseCopyWithImpl<$Res,
        $Val extends RepositorySearchResponseLicense>
    implements $RepositorySearchResponseLicenseCopyWith<$Res> {
  _$RepositorySearchResponseLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchResponseLicenseImplCopyWith<$Res>
    implements $RepositorySearchResponseLicenseCopyWith<$Res> {
  factory _$$RepositorySearchResponseLicenseImplCopyWith(
          _$RepositorySearchResponseLicenseImpl value,
          $Res Function(_$RepositorySearchResponseLicenseImpl) then) =
      __$$RepositorySearchResponseLicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, String? url});
}

/// @nodoc
class __$$RepositorySearchResponseLicenseImplCopyWithImpl<$Res>
    extends _$RepositorySearchResponseLicenseCopyWithImpl<$Res,
        _$RepositorySearchResponseLicenseImpl>
    implements _$$RepositorySearchResponseLicenseImplCopyWith<$Res> {
  __$$RepositorySearchResponseLicenseImplCopyWithImpl(
      _$RepositorySearchResponseLicenseImpl _value,
      $Res Function(_$RepositorySearchResponseLicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_$RepositorySearchResponseLicenseImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchResponseLicenseImpl
    implements _RepositorySearchResponseLicense {
  const _$RepositorySearchResponseLicenseImpl(
      {required this.key, required this.name, required this.url});

  factory _$RepositorySearchResponseLicenseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RepositorySearchResponseLicenseImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  final String? url;

  @override
  String toString() {
    return 'RepositorySearchResponseLicense(key: $key, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchResponseLicenseImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchResponseLicenseImplCopyWith<
          _$RepositorySearchResponseLicenseImpl>
      get copyWith => __$$RepositorySearchResponseLicenseImplCopyWithImpl<
          _$RepositorySearchResponseLicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchResponseLicenseImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchResponseLicense
    implements RepositorySearchResponseLicense {
  const factory _RepositorySearchResponseLicense(
      {required final String key,
      required final String name,
      required final String? url}) = _$RepositorySearchResponseLicenseImpl;

  factory _RepositorySearchResponseLicense.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchResponseLicenseImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchResponseLicenseImplCopyWith<
          _$RepositorySearchResponseLicenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositorySearchRequest _$RepositorySearchRequestFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchRequest.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchRequest {
  String get query => throw _privateConstructorUsedError;
  RepositorySearchRequestSort? get sort => throw _privateConstructorUsedError;
  RepositorySearchRequestOrder? get order =>
      throw _privateConstructorUsedError; // max 100
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchRequestCopyWith<RepositorySearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchRequestCopyWith<$Res> {
  factory $RepositorySearchRequestCopyWith(RepositorySearchRequest value,
          $Res Function(RepositorySearchRequest) then) =
      _$RepositorySearchRequestCopyWithImpl<$Res, RepositorySearchRequest>;
  @useResult
  $Res call(
      {String query,
      RepositorySearchRequestSort? sort,
      RepositorySearchRequestOrder? order,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      int? perPage,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      int? page});
}

/// @nodoc
class _$RepositorySearchRequestCopyWithImpl<$Res,
        $Val extends RepositorySearchRequest>
    implements $RepositorySearchRequestCopyWith<$Res> {
  _$RepositorySearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as RepositorySearchRequestSort?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RepositorySearchRequestOrder?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchRequestImplCopyWith<$Res>
    implements $RepositorySearchRequestCopyWith<$Res> {
  factory _$$RepositorySearchRequestImplCopyWith(
          _$RepositorySearchRequestImpl value,
          $Res Function(_$RepositorySearchRequestImpl) then) =
      __$$RepositorySearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      RepositorySearchRequestSort? sort,
      RepositorySearchRequestOrder? order,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      int? perPage,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      int? page});
}

/// @nodoc
class __$$RepositorySearchRequestImplCopyWithImpl<$Res>
    extends _$RepositorySearchRequestCopyWithImpl<$Res,
        _$RepositorySearchRequestImpl>
    implements _$$RepositorySearchRequestImplCopyWith<$Res> {
  __$$RepositorySearchRequestImplCopyWithImpl(
      _$RepositorySearchRequestImpl _value,
      $Res Function(_$RepositorySearchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$RepositorySearchRequestImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as RepositorySearchRequestSort?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RepositorySearchRequestOrder?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchRequestImpl implements _RepositorySearchRequest {
  const _$RepositorySearchRequestImpl(
      {required this.query,
      this.sort = RepositorySearchRequestSort.bestMatch,
      this.order = RepositorySearchRequestOrder.desc,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      this.perPage = 30,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      this.page = 1});

  factory _$RepositorySearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositorySearchRequestImplFromJson(json);

  @override
  final String query;
  @override
  @JsonKey()
  final RepositorySearchRequestSort? sort;
  @override
  @JsonKey()
  final RepositorySearchRequestOrder? order;
// max 100
  @override
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  final int? perPage;
  @override
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  final int? page;

  @override
  String toString() {
    return 'RepositorySearchRequest(query: $query, sort: $sort, order: $order, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, query, sort, order, perPage, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchRequestImplCopyWith<_$RepositorySearchRequestImpl>
      get copyWith => __$$RepositorySearchRequestImplCopyWithImpl<
          _$RepositorySearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchRequestImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchRequest implements RepositorySearchRequest {
  const factory _RepositorySearchRequest(
      {required final String query,
      final RepositorySearchRequestSort? sort,
      final RepositorySearchRequestOrder? order,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      final int? perPage,
      @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
      final int? page}) = _$RepositorySearchRequestImpl;

  factory _RepositorySearchRequest.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchRequestImpl.fromJson;

  @override
  String get query;
  @override
  RepositorySearchRequestSort? get sort;
  @override
  RepositorySearchRequestOrder? get order;
  @override // max 100
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  int? get perPage;
  @override
  @JsonKey(fromJson: _intNullableFromJson, toJson: _intNullableToJson)
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchRequestImplCopyWith<_$RepositorySearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

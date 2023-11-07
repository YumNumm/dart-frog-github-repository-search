// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) {
  return _ApiErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorResponse {
  /// エラー詳細ドキュメントへのURL
  /// ドキュメントが存在しない場合はnull
  String? get type => throw _privateConstructorUsedError;

  /// 人間が読めるエラーの概要
  String get title => throw _privateConstructorUsedError;

  /// ユーザに表示するこのエラーに対する対処の説明
  String? get tip => throw _privateConstructorUsedError;

  /// エラーの原因となった例外
  String? get exception => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorResponseCopyWith<ApiErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorResponseCopyWith<$Res> {
  factory $ApiErrorResponseCopyWith(
          ApiErrorResponse value, $Res Function(ApiErrorResponse) then) =
      _$ApiErrorResponseCopyWithImpl<$Res, ApiErrorResponse>;
  @useResult
  $Res call({String? type, String title, String? tip, String? exception});
}

/// @nodoc
class _$ApiErrorResponseCopyWithImpl<$Res, $Val extends ApiErrorResponse>
    implements $ApiErrorResponseCopyWith<$Res> {
  _$ApiErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = null,
    Object? tip = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorResponseImplCopyWith<$Res>
    implements $ApiErrorResponseCopyWith<$Res> {
  factory _$$ApiErrorResponseImplCopyWith(_$ApiErrorResponseImpl value,
          $Res Function(_$ApiErrorResponseImpl) then) =
      __$$ApiErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String title, String? tip, String? exception});
}

/// @nodoc
class __$$ApiErrorResponseImplCopyWithImpl<$Res>
    extends _$ApiErrorResponseCopyWithImpl<$Res, _$ApiErrorResponseImpl>
    implements _$$ApiErrorResponseImplCopyWith<$Res> {
  __$$ApiErrorResponseImplCopyWithImpl(_$ApiErrorResponseImpl _value,
      $Res Function(_$ApiErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = null,
    Object? tip = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$ApiErrorResponseImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorResponseImpl implements _ApiErrorResponse {
  const _$ApiErrorResponseImpl(
      {this.type, required this.title, this.tip, required this.exception});

  factory _$ApiErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorResponseImplFromJson(json);

  /// エラー詳細ドキュメントへのURL
  /// ドキュメントが存在しない場合はnull
  @override
  final String? type;

  /// 人間が読めるエラーの概要
  @override
  final String title;

  /// ユーザに表示するこのエラーに対する対処の説明
  @override
  final String? tip;

  /// エラーの原因となった例外
  @override
  final String? exception;

  @override
  String toString() {
    return 'ApiErrorResponse(type: $type, title: $title, tip: $tip, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, tip, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      __$$ApiErrorResponseImplCopyWithImpl<_$ApiErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiErrorResponse implements ApiErrorResponse {
  const factory _ApiErrorResponse(
      {final String? type,
      required final String title,
      final String? tip,
      required final String? exception}) = _$ApiErrorResponseImpl;

  factory _ApiErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ApiErrorResponseImpl.fromJson;

  @override

  /// エラー詳細ドキュメントへのURL
  /// ドキュメントが存在しない場合はnull
  String? get type;
  @override

  /// 人間が読めるエラーの概要
  String get title;
  @override

  /// ユーザに表示するこのエラーに対する対処の説明
  String? get tip;
  @override

  /// エラーの原因となった例外
  String? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

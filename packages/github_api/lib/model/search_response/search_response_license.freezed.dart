// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseLicense _$SearchResponseLicenseFromJson(
    Map<String, dynamic> json) {
  return _SearchResponseLicense.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseLicense {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get spdxId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseLicenseCopyWith<SearchResponseLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseLicenseCopyWith<$Res> {
  factory $SearchResponseLicenseCopyWith(SearchResponseLicense value,
          $Res Function(SearchResponseLicense) then) =
      _$SearchResponseLicenseCopyWithImpl<$Res, SearchResponseLicense>;
  @useResult
  $Res call({String key, String name, String? spdxId, String? url});
}

/// @nodoc
class _$SearchResponseLicenseCopyWithImpl<$Res,
        $Val extends SearchResponseLicense>
    implements $SearchResponseLicenseCopyWith<$Res> {
  _$SearchResponseLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? spdxId = freezed,
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
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResponseLicenseImplCopyWith<$Res>
    implements $SearchResponseLicenseCopyWith<$Res> {
  factory _$$SearchResponseLicenseImplCopyWith(
          _$SearchResponseLicenseImpl value,
          $Res Function(_$SearchResponseLicenseImpl) then) =
      __$$SearchResponseLicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String name, String? spdxId, String? url});
}

/// @nodoc
class __$$SearchResponseLicenseImplCopyWithImpl<$Res>
    extends _$SearchResponseLicenseCopyWithImpl<$Res,
        _$SearchResponseLicenseImpl>
    implements _$$SearchResponseLicenseImplCopyWith<$Res> {
  __$$SearchResponseLicenseImplCopyWithImpl(_$SearchResponseLicenseImpl _value,
      $Res Function(_$SearchResponseLicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? spdxId = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SearchResponseLicenseImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResponseLicenseImpl implements _SearchResponseLicense {
  const _$SearchResponseLicenseImpl(
      {required this.key,
      required this.name,
      required this.spdxId,
      required this.url});

  factory _$SearchResponseLicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseLicenseImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  final String? spdxId;
  @override
  final String? url;

  @override
  String toString() {
    return 'SearchResponseLicense(key: $key, name: $name, spdxId: $spdxId, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseLicenseImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.spdxId, spdxId) || other.spdxId == spdxId) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, spdxId, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseLicenseImplCopyWith<_$SearchResponseLicenseImpl>
      get copyWith => __$$SearchResponseLicenseImplCopyWithImpl<
          _$SearchResponseLicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseLicenseImplToJson(
      this,
    );
  }
}

abstract class _SearchResponseLicense implements SearchResponseLicense {
  const factory _SearchResponseLicense(
      {required final String key,
      required final String name,
      required final String? spdxId,
      required final String? url}) = _$SearchResponseLicenseImpl;

  factory _SearchResponseLicense.fromJson(Map<String, dynamic> json) =
      _$SearchResponseLicenseImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  String? get spdxId;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SearchResponseLicenseImplCopyWith<_$SearchResponseLicenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

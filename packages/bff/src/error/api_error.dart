import 'dart:convert';
import 'dart:io';

import 'package:bff_api_types/bff_api_types.dart';
import 'package:dart_frog/dart_frog.dart';

/// RFC 9457 - Problem Details for HTTP APIs
/// https://datatracker.ietf.org/doc/html/rfc9457
/// に準拠したエラーを表すクラス
class ApiError extends Response {
  /// JSONパースに失敗した場合・JSONの形式が不正な場合
  factory ApiError.badRequest({
    String? type,
    String title = '不正なリクエストです',
    String? tip,
    Object? exception,
  }) =>
      ApiError._(
        statusCode: HttpStatus.badRequest,
        headers: _headers,
        data: ApiErrorResponse(
          type: type,
          title: title,
          tip: tip,
          exception: exception?.runtimeType.toString(),
        ),
      );

  /// Method が許可されていない場合
  factory ApiError.methodNotAllowed({
    List<HttpMethod>? allow,
  }) =>
      ApiError._(
        statusCode: HttpStatus.methodNotAllowed,
        headers: {
          ..._headers,
          'Allow': allow?.map((e) => e.toString()).join(', ') ?? '',
        },
        data: const ApiErrorResponse(
          title: '許可されていないHTTPメソッドです',
          tip: '許可されているメソッドはAllowヘッダに記載されています',
          exception: null,
        ),
      );

  /// バックエンドAPIのCallに失敗した場合
  factory ApiError.internalServerError({
    String? type,
    String title = '内部サーバエラー',
    String? tip,
    Object? exception,
  }) =>
      ApiError._(
        statusCode: HttpStatus.internalServerError,
        headers: _headers,
        data: ApiErrorResponse(
          type: type,
          title: title,
          tip: tip,
          exception: exception?.toString(),
        ),
      );

  ApiError._({
    required this.data,
    super.statusCode,
    super.headers,
  }) : super(
          body: jsonEncode(data),
        );

  final ApiErrorResponse data;

  static const _headers = {
    'Content-Type': 'application/problem+json; charset=utf-8',
  };
}

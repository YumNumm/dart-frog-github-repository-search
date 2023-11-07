import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_response.freezed.dart';
part 'api_error_response.g.dart';

/// RFC 9457 - Problem Details for HTTP APIs
/// を参考にしたエラーを表すレスポンスクラス
@freezed
class ApiErrorResponse with _$ApiErrorResponse {
  const factory ApiErrorResponse({
    /// エラー詳細ドキュメントへのURL
    /// ドキュメントが存在しない場合はnull
    String? type,

    /// 人間が読めるエラーの概要
    required String title,

    /// ユーザに表示するこのエラーに対する対処の説明
    String? tip,

    /// エラーの原因となった例外
    required String? exception,
  }) = _ApiErrorResponse;

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorResponseFromJson(json);
}

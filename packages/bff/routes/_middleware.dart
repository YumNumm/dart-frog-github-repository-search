import 'dart:io';

import 'package:bff_api_types/bff_api_types.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

import '../src/error/api_error.dart';
import '../src/util/method_check.dart';

Handler middleware(Handler handler) {
  // injection
  return (context) async {
    try {
      return await handler
          .use(
            provider<BffConfiguration>(
              (context) => BffConfiguration.fromEnv(),
            ),
          )
          .use(
            requestLogger(),
          )
          .use(
            fromShelfMiddleware(
              shelf.corsHeaders(
                headers: {
                  shelf.ACCESS_CONTROL_ALLOW_ORIGIN:
                      'https://gh-repo-search.yumnumm.dev',
                },
              ),
            ),
          )
          .call(context);
    } on MethodNotAllowedException catch (exception) {
      return ApiError.methodNotAllowed(
        allow: exception.allowList,
      );
    } on FormatException catch (exception) {
      return ApiError.badRequest(
        exception: exception,
        tip: 'リクエストの形式が不正です。正しいJSONか確認してください。',
      );
    } on DioException catch (exception) {
      return ApiError.internalServerError(
        exception: exception,
        tip: '内部エラーが発生しました。管理者にお問い合わせください。',
      );
    } on CheckedFromJsonException catch (exception) {
      return ApiError.badRequest(
        exception: exception,
        tip: 'リクエストの形式が不正です。Requestの定義を確認してください。',
      );
    } on Exception catch (exception) {
      return ApiError.internalServerError(
        exception: exception,
        tip: '内部エラーが発生しました。管理者にお問い合わせください。',
      );
    }
  };
}

class BffConfiguration {
  BffConfiguration._({
    required this.githubApiToken,
  });

  factory BffConfiguration.fromEnv() => BffConfiguration._(
        githubApiToken: Platform.environment['GITHUB_API_TOKEN'] ??
            (throw Exception('GITHUB_API_TOKEN is not set')),
      );

  final String githubApiToken;
}

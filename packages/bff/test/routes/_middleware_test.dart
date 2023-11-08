import 'dart:io';

import 'package:bff_api_types/bff_api_types.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:github_api/github_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/_middleware.dart';
import '../../src/util/method_check.dart';

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  group(
    '例外処理チェック',
    () {
      test(
        'MethodNotAllowedExceptionに対して、MethodNotAllowedを返すこと',
        () async {
          // Arrange
          final allowedMethods = [HttpMethod.get];
          final handler = middleware(
            (context) => throw MethodNotAllowedException(allowedMethods),
          );

          final request = Request.get(Uri.parse('http://localhost/'));
          final context = _MockRequestContext();
          when(() => context.request).thenReturn(request);

          // Act
          final actual = await handler(context);

          // Assert
          expect(
            actual.statusCode,
            equals(HttpStatus.methodNotAllowed),
          );
        },
      );
      test(
        'FormatExceptionに対して、BadRequestを返すこと',
        () async {
          // Arrange
          final handler = middleware(
            (context) => throw const FormatException('test'),
          );

          final request = Request.get(Uri.parse('http://localhost/'));
          final context = _MockRequestContext();
          when(() => context.request).thenReturn(request);

          // Act
          final actual = await handler(context);

          // Assert
          expect(
            actual.statusCode,
            equals(HttpStatus.badRequest),
          );
        },
      );
      test(
        'DioExceptionに対して、InternalServerErrorを返すこと',
        () async {
          // Arrange
          final handler = middleware(
            (context) => throw DioException(
              requestOptions: RequestOptions(path: '/'),
            ),
          );

          final request = Request.get(Uri.parse('http://localhost/'));
          final context = _MockRequestContext();
          when(() => context.request).thenReturn(request);

          // Act
          final actual = await handler(context);

          // Assert
          expect(
            actual.statusCode,
            equals(HttpStatus.internalServerError),
          );
        },
      );
      test(
        'CheckedFromJsonExceptionに対して、BadRequestを返すこと',
        () async {
          // Arrange
          final handler = middleware(
            (context) => throw CheckedFromJsonException(
              {},
              'test',
              'test',
              'test',
            ),
          );

          final request = Request.get(Uri.parse('http://localhost/'));
          final context = _MockRequestContext();
          when(() => context.request).thenReturn(request);

          // Act
          final actual = await handler(context);

          // Assert
          expect(
            actual.statusCode,
            equals(HttpStatus.badRequest),
          );
        },
      );
      test(
        'Exceptionに対して、InternalServerErrorを返すこと',
        () async {
          // Arrange
          final handler = middleware(
            (context) => throw Exception(),
          );

          final request = Request.get(Uri.parse('http://localhost/'));
          final context = _MockRequestContext();
          when(() => context.request).thenReturn(request);

          // Act
          final actual = await handler(context);

          // Assert
          expect(
            actual.statusCode,
            equals(HttpStatus.internalServerError),
          );
        },
      );
    },
  );
}

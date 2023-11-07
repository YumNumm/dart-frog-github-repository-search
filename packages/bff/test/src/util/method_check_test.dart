import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../src/util/method_check.dart';

class _MockRequest extends Mock implements Request {}

void main() {
  late Request request;
  setUp(
    () {
      request = _MockRequest();
    },
  );

  test(
    '許可されているメソッドの場合は何もしない(1つ)',
    () {
      when(() => request.method).thenReturn(HttpMethod.get);
      final allows = [HttpMethod.get];
      expect(
        () => methodCheck(request, allows),
        returnsNormally,
      );
    },
  );
  test(
    '許可されているメソッドの場合は何もしない(複数)',
    () {
      when(() => request.method).thenReturn(HttpMethod.get);
      final allows = [HttpMethod.get, HttpMethod.post];
      expect(
        () => methodCheck(request, allows),
        returnsNormally,
      );
    },
  );
  test(
    '許可されていないメソッドの場合',
    () {
      when(() => request.method).thenReturn(HttpMethod.get);
      final allows = [HttpMethod.post];
      expect(
        () => methodCheck(request, allows),
        throwsA(isA<MethodNotAllowedException>()),
      );
    },
  );
}

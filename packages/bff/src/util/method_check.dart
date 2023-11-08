import 'package:dart_frog/dart_frog.dart';

/// Httpのメソッドチェック
/// [allows]に含まれていない場合は[MethodNotAllowedException]を投げる
void methodCheck(Request request, List<HttpMethod> allows) {
  if (allows.contains(request.method)) {
    return;
  }
  throw MethodNotAllowedException(allows);
}

class MethodNotAllowedException implements Exception {
  MethodNotAllowedException(this.allowList);

  final List<HttpMethod> allowList;

  @override
  String toString() => 'MethodNotAllowedException: $allowList';
}

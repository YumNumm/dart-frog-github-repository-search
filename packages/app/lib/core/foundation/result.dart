/// sealed classに準拠したResultクラスを生成
sealed class Result<S, E extends Exception> {
  const Result();
}

/// Resultクラスに準拠したSuccessクラス
final class Success<S, E extends Exception> extends Result<S, E> {
  const Success(this.value);
  final S value;
}

/// Resultクラスに準拠したFailureクラス
final class Failure<S, E extends Exception> extends Result<S, E> {
  const Failure(this.exception, this.stackTrace);
  final E exception;
  final StackTrace stackTrace;
}

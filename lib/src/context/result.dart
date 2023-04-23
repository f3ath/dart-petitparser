import '../core/exception.dart';
import '../shared/annotations.dart';
import 'context.dart';

/// An immutable parse result.
abstract class Result<R> extends Context {
  const Result(super.buffer, super.position);

  /// Returns `true` if this result indicates a parse success.
  @inlineVm
  bool get isSuccess => false;

  /// Returns `true` if this result indicates a parse failure.
  @inlineVm
  bool get isFailure => false;

  /// Returns the parsed value of this result, or throws a [ParserException]
  /// if this is a parse failure.
  @inlineVm
  R get value;

  /// Returns the error message of this result, or throws an [UnsupportedError]
  /// if this is a parse success.
  @inlineVm
  String get message;

  /// Transforms the result with a [callback].
  Result<T> map<T>(T Function(R element) callback);
}

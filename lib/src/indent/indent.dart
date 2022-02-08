import '../core/parser.dart';
import '../parser/action/flatten.dart';
import '../parser/action/map.dart';
import '../parser/action/where.dart';
import '../parser/character/pattern.dart';
import '../parser/combinator/and.dart';
import '../parser/misc/epsilon.dart';
import '../parser/repeater/possessive.dart';

/// A stateful set of parsers to handled indentation.
///
/// Based on https://stackoverflow.com/a/56926044/82303.
class Indent {
  Indent({Parser<String>? parser, String? message})
      : parser = parser ?? pattern(' \t'),
        message = message ?? 'Expected an indented block';

  /// The parser used read a single indentation step.
  final Parser<String> parser;

  /// The error message to display when an indention is expected.
  final String message;

  /// The current stack of indentations.
  final List<String> stack = [];

  /// The currently active indentation.
  String current = '';

  /// A parser that increases the current indent, but does not consume anything.
  late Parser<String> increase = parser
      .plus()
      .flatten(message)
      .where((value) => value.length > current.length)
      .map((value) {
    stack.add(current);
    return current = value;
  }).and();

  /// A parser that consumes and returns the current indent.
  late Parser<String> same =
      parser.star().flatten(message).where((value) => value == current);

  /// A parser that reduces the current indent, but does not consume anything.
  late Parser<String> decrease = epsilon()
      .where((value) => stack.isNotEmpty)
      .map((value) => current = stack.removeLast());
}

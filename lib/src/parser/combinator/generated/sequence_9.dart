// AUTO-GENERATED CODE: DO NOT EDIT

import 'package:meta/meta.dart';

import '../../../core/context.dart';
import '../../../core/parser.dart';
import '../../../core/result.dart';
import '../../../shared/annotations.dart';
import '../../action/map.dart';
import '../../utils/sequential.dart';

/// Creates a [Parser] that consumes the 9 parsers passed as argument in
/// sequence and returns a [Record] with 9 positional parse results.
///
/// For example,
/// the parser `seq9(char('a'), char('b'), char('c'), char('d'), char('e'), char('f'), char('g'), char('h'), char('i'))`
/// returns `('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')`
/// for the input `'abcdefghi'`.
@useResult
Parser<(R1, R2, R3, R4, R5, R6, R7, R8, R9)>
    seq9<R1, R2, R3, R4, R5, R6, R7, R8, R9>(
  Parser<R1> parser1,
  Parser<R2> parser2,
  Parser<R3> parser3,
  Parser<R4> parser4,
  Parser<R5> parser5,
  Parser<R6> parser6,
  Parser<R7> parser7,
  Parser<R8> parser8,
  Parser<R9> parser9,
) =>
        SequenceParser9<R1, R2, R3, R4, R5, R6, R7, R8, R9>(parser1, parser2,
            parser3, parser4, parser5, parser6, parser7, parser8, parser9);

/// Extensions on a [Record] with 9 positional [Parser]s.
extension RecordOfParsersExtension9<R1, R2, R3, R4, R5, R6, R7, R8, R9> on (
  Parser<R1>,
  Parser<R2>,
  Parser<R3>,
  Parser<R4>,
  Parser<R5>,
  Parser<R6>,
  Parser<R7>,
  Parser<R8>,
  Parser<R9>
) {
  /// Converts a [Record] of 9 positional parsers to a [Parser] that runs the
  /// parsers in sequence and returns a [Record] with 9 positional parse results.
  ///
  /// For example,
  /// the parser `(char('a'), char('b'), char('c'), char('d'), char('e'), char('f'), char('g'), char('h'), char('i')).toSequenceParser()`
  /// returns `('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')`
  /// for the input `'abcdefghi'`.
  @useResult
  Parser<(R1, R2, R3, R4, R5, R6, R7, R8, R9)> toSequenceParser() =>
      SequenceParser9<R1, R2, R3, R4, R5, R6, R7, R8, R9>(
          $1, $2, $3, $4, $5, $6, $7, $8, $9);
}

/// A parser that consumes a sequence of 9 parsers and returns a [Record] with
/// 9 positional parse results.
class SequenceParser9<R1, R2, R3, R4, R5, R6, R7, R8, R9>
    extends Parser<(R1, R2, R3, R4, R5, R6, R7, R8, R9)>
    implements SequentialParser {
  SequenceParser9(this.parser1, this.parser2, this.parser3, this.parser4,
      this.parser5, this.parser6, this.parser7, this.parser8, this.parser9);

  Parser<R1> parser1;
  Parser<R2> parser2;
  Parser<R3> parser3;
  Parser<R4> parser4;
  Parser<R5> parser5;
  Parser<R6> parser6;
  Parser<R7> parser7;
  Parser<R8> parser8;
  Parser<R9> parser9;

  @override
  Result<(R1, R2, R3, R4, R5, R6, R7, R8, R9)> parseOn(Context context) {
    final result1 = parser1.parseOn(context);
    if (result1.isFailure) return result1.failure(result1.message);
    final result2 = parser2.parseOn(result1);
    if (result2.isFailure) return result2.failure(result2.message);
    final result3 = parser3.parseOn(result2);
    if (result3.isFailure) return result3.failure(result3.message);
    final result4 = parser4.parseOn(result3);
    if (result4.isFailure) return result4.failure(result4.message);
    final result5 = parser5.parseOn(result4);
    if (result5.isFailure) return result5.failure(result5.message);
    final result6 = parser6.parseOn(result5);
    if (result6.isFailure) return result6.failure(result6.message);
    final result7 = parser7.parseOn(result6);
    if (result7.isFailure) return result7.failure(result7.message);
    final result8 = parser8.parseOn(result7);
    if (result8.isFailure) return result8.failure(result8.message);
    final result9 = parser9.parseOn(result8);
    if (result9.isFailure) return result9.failure(result9.message);
    return result9.success((
      result1.value,
      result2.value,
      result3.value,
      result4.value,
      result5.value,
      result6.value,
      result7.value,
      result8.value,
      result9.value
    ));
  }

  @override
  int fastParseOn(String buffer, int position) {
    position = parser1.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser2.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser3.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser4.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser5.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser6.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser7.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser8.fastParseOn(buffer, position);
    if (position < 0) return -1;
    position = parser9.fastParseOn(buffer, position);
    if (position < 0) return -1;
    return position;
  }

  @override
  List<Parser> get children => [
        parser1,
        parser2,
        parser3,
        parser4,
        parser5,
        parser6,
        parser7,
        parser8,
        parser9
      ];

  @override
  void replace(Parser source, Parser target) {
    super.replace(source, target);
    if (parser1 == source) parser1 = target as Parser<R1>;
    if (parser2 == source) parser2 = target as Parser<R2>;
    if (parser3 == source) parser3 = target as Parser<R3>;
    if (parser4 == source) parser4 = target as Parser<R4>;
    if (parser5 == source) parser5 = target as Parser<R5>;
    if (parser6 == source) parser6 = target as Parser<R6>;
    if (parser7 == source) parser7 = target as Parser<R7>;
    if (parser8 == source) parser8 = target as Parser<R8>;
    if (parser9 == source) parser9 = target as Parser<R9>;
  }

  @override
  SequenceParser9<R1, R2, R3, R4, R5, R6, R7, R8, R9> copy() =>
      SequenceParser9<R1, R2, R3, R4, R5, R6, R7, R8, R9>(parser1, parser2,
          parser3, parser4, parser5, parser6, parser7, parser8, parser9);
}

/// Extension on a [Record] with 9 positional values.
extension RecordOfValuesExtension9<T1, T2, T3, T4, T5, T6, T7, T8, T9> on (
  T1,
  T2,
  T3,
  T4,
  T5,
  T6,
  T7,
  T8,
  T9
) {
  /// Returns the first element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $1')
  T1 get first => $1;

  /// Returns the second element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $2')
  T2 get second => $2;

  /// Returns the third element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $3')
  T3 get third => $3;

  /// Returns the fourth element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $4')
  T4 get fourth => $4;

  /// Returns the fifth element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $5')
  T5 get fifth => $5;

  /// Returns the sixth element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $6')
  T6 get sixth => $6;

  /// Returns the seventh element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $7')
  T7 get seventh => $7;

  /// Returns the eighth element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $8')
  T8 get eighth => $8;

  /// Returns the ninth element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $9')
  T9 get ninth => $9;

  /// Returns the last element of this record.
  @inlineVm
  @inlineJs
  @Deprecated(r'Instead use the canonical accessor $9')
  T9 get last => $9;

  /// Converts this [Record] with 9 positional values to a new type [R] using
  /// the provided [callback] with 9 positional arguments.
  @inlineVm
  @inlineJs
  R map<R>(R Function(T1, T2, T3, T4, T5, T6, T7, T8, T9) callback) =>
      callback($1, $2, $3, $4, $5, $6, $7, $8, $9);
}

/// Extension on a [Parser] producing a [Record] of 9 positional values.
extension RecordParserExtension9<T1, T2, T3, T4, T5, T6, T7, T8, T9>
    on Parser<(T1, T2, T3, T4, T5, T6, T7, T8, T9)> {
  /// Maps a parsed [Record] to [R] using the provided [callback], see
  /// [MapParserExtension.map] for details.
  @useResult
  Parser<R> map9<R>(R Function(T1, T2, T3, T4, T5, T6, T7, T8, T9) callback,
          {bool hasSideEffects = false}) =>
      map((record) => record.map(callback), hasSideEffects: hasSideEffects);
}

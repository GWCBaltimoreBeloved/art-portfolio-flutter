import 'dart:convert';

class Utils {
  Utils._();

  static void prettyPrint(dynamic json) {
    const encoder = JsonEncoder.withIndent('  ');
    final prettyString = encoder.convert(json);
    // ignore: avoid_print
    prettyString.split('\n').forEach(print);
  }
}

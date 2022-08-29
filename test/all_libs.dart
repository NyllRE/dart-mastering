import 'package:test/test.dart';

// import 'package:dart_mastering/datatypes.dart';
// import 'package:dart_mastering/operators.dart';
// import 'package:dart_mastering/conditions.dart';
// import 'package:dart_mastering/loops.dart';
import 'package:dart_mastering/functions.dart';

void main() {
  test('functions', () {
    expect(namedPositionalParams(x: 5, y: 5, greeting: "hi!"),
        "NAMED: 5 is different from 5.0 hi!");
  });
}

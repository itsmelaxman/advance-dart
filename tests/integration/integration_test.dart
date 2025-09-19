// Integration Test Example
import 'package:test/test.dart';

void main() {
  group('Integration', () {
    test('sample', () {
      expect('dart'.toUpperCase(), equals('DART'));
    });
  });
}

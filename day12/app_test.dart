import 'package:test/test.dart';
import 'app.dart';

void main() {
  group('basic tests', () {
    test('part1', () {
      expect(solutionPart1(), equals('1337'));
    });
    test('part2', () {
      expect(solutionPart2(), equals('42'));
    });
  });
}

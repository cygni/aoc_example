import 'package:test/test.dart';
import 'app.dart';

void main() {
  group('basic tests', () {
    test('part1', () {
      expect(solutionPart1([1337, 42]), equals(1379));
    });
    test('part2', () {
      expect(solutionPart2([1337, 42]), equals(56154));
    });
  });
}

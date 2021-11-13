import 'dart:io';
import 'dart:convert';
import 'dart:async';

String solutionPart1(List<int> input) {
  return input[0].toString();
}

String solutionPart2(List<int> input) {
  return input[1].toString();
}

void main() async {
  print('Dart');
  List<int> input = await parseInput("input.txt");
  String part = Platform.environment["part"] ?? "part1";
  if (part == "part1") {
    print(solutionPart1(input));
  } else if (part == "part2") {
    print(solutionPart2(input));
  } else {
    print("Unknown part " + part);
  }
}

Future<List<int>> parseInput(String path) async {
  return new File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .map((line) => int.parse(line))
      .toList();
}

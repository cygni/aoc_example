import 'dart:io' show Platform;

String solutionPart1() {
  return "1337";
}

String solutionPart2() {
  return "42";
}

void main() {
  String part = Platform.environment["part"] ?? "part1";
  if (part == "part1") {
    print(solutionPart1());
  } else if (part == "part2") {
    print(solutionPart2());
  } else {
    print("Unknown part " + part);
  }
}

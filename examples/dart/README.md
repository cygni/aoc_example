# Dart
If you want to run Dart locally, you need to get it from the [Dart language site](https://dart.dev/)

VSCode and Intellij both have decent dart plugins.

## How to run tests
From a terminal open in this directory run `dart app_test.dart` (You may need to run `pub get` first to get the dependencies)

## How to build
```bash
docker build -t aoc_dart . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_dart
```

To run locally, just type `dart app.dart` in the terminal.

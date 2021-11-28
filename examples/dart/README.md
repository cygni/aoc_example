# Dart
When the people who built the V8 javascript engine thought about how they could make things even faster, they realized they would have to get rid of some of the hairy cruft in the javascript specification. That meant a new language, so Dart was born. It is also a much better-designed language than javascript, being a little more like Java and it has "batteries included" in a good standard library.

Google's plans to include a Dart VM in Chrome were met with hostility, but Dart can be compiled to Javascript so you can still use it for all your web development (parts of Google use Angular with Dart). It hasn't quite taken off for web, but on mobile it has a "killer app", Flutter, so it will be around for a while. It's a really nice little language and should be easy enough to use for anyone with Java or Javascript experience.

If you want to run Dart locally, you need to get it from the [Dart language site](https://dart.dev/)

VSCode and Intellij both have decent dart plugins.

## How to run tests
From a terminal open in this directory run `dart app_test.dart` (You may need to run `pub get` first to get the dependencies)

## How to build and run
To run locally, just type `dart app.dart` in the terminal.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

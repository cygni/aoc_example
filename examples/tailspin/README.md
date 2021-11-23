# Tailspin
Tailspin is a one-man (@tobe on the Cygni slack) hobby project to create a language where data flows through a series of transformations. The goal is that everything should be as visually declarative as possible. Tailspin can often give rise to very elegant, short and expressive programs, but it is very different, so you'll have to clear your mind of previous programming knowledge. How about functions that take exactly one input value and produce zero or more return values? [Read more](https://github.com/tobega/tailspin-v0)

If you want to run Tailspin locally, you need [java 16 or higher](https://adoptopenjdk.net/) and download or build the tailspin.jar from the [Tailspin source repository](https://github.com/tobega/tailspin-v0)

If you use VSCode for editing, you may want the [Tailspin syntax highlighting extension](https://github.com/tobega/vsc-tailspin-language)

## How to run tests
From a terminal open in this directory run `java -jar tailspin.jar --test app.tt < input.txt`

Normally you would probably write tests in a way that you wouldn't need to use stdinput (the `< input.txt` bit),
but this example does not override the reading of the input for the part2 test.

## How to build and run
To run locally, just type `java -jar tailspin.jar app.tt < input.txt` in the terminal (if you wish, replace input.txt with other input)

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

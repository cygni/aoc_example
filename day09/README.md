# Tailspin
If you want to run Tailspin locally, you need java 16 or higher and download or build the tailspin.jar from the [Tailspin source](https://github.com/tobega/tailspin-v0)

If you use VSCode for editing, you may want the [Tailspin syntax highlighting extension](https://github.com/tobega/vsc-tailspin-language)

## How to run tests
From a terminal open in this directory run `java -jar tailspin.jar --test app.tt < input.txt`

Normally you would probably write tests so you wouldn't need to use stdinput (the `< input.txt` bit),
but this example does not override the reading of the input for the part2 test.

## How to build
```bash
docker build -t aoc09 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc09
```

To run locally, just type `java -jar tailspin.jar app.tt < input.txt` in the terminal (if you wish, replace input.txt with other input)

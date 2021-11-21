# Ballerina
If you want to run Ballerina locally, you need to get it from the [Ballerina language site](https://ballerina.io/)

VSCode and Intellij both have good ballerina plugins.

## How to run tests
From a terminal open in this directory run `bal test`

## How to build
```bash
docker build -t aoc_ballerina . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_ballerina
```

To run locally, just type `bal run` in the terminal.

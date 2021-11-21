# Kotlin with gradle

This project builds the code in a Docker container and then transfers the resulting JAR-file to a new container. 

## How to build
```bash
docker build -t aoc_kotlin . 
```

## How to run tests
Use the integrated test runner in your IDE or run `./gradlew test`

## How to run

The environment variable `part` specifies which part of the puzzle to solve. If the environment variable is not set, it will default to `part1`.

### Run with docker

```bash
docker run -e part=part2 aoc_kotlin
```

### Run with gradle (no docker)

```bash
part=part2 ./gradlew run
```
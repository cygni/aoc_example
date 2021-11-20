# Java with gradle

This project builds the code in a Docker container and then transfers the resulting JAR-file to a new container. 

## How to build
```bash
docker build -t aoc01 . 
```

## How to run tests
Use the integrated test runner in your IDE or run `gradle test`

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in App.java).
```bash
docker run -e part=part1 aoc01
```

Alternatively, you can run a single file main program directly by `java app/src/main/java/aoc/App.java`. If you have more source
files you have to compile first
```bash
javac app/src/main/java/aoc/*
java java -cp app/src/main/java aoc.App
```

Or, using gradle, do `gradle run`
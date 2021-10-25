# Java with gradle

This project builds the code in a Docker container and then transfers the resulting JAR-file to a new container. 

## How to build
```bash
docker build -t aoc01 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in App.java).
```bash
docker run -e part=part1 aoc01
```
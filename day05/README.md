# C

This project builds the code in a Docker container and then transfers the resulting statically compiled binary to a new container. 

## How to build
```bash
docker build -t aoc05 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in aoc.c).
```bash
docker run -e part=part1 aoc05
```
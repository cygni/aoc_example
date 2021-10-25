# Go

This project compiles the binary and adds it to a minimal image.

## How to build
```bash
docker build -t aoc03 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in aoc.go).
```bash
docker run -e part=part1 aoc03
```
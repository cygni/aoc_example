# R

This project copies the source files to a docker image with R. 

## How to build
```bash
docker build -t aoc06 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in aoc.R).
```bash
docker run -e part=part1 aoc06
```
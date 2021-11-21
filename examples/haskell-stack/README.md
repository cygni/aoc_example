# Haskell with ghc

This project adds the code to an image, compiles it and runs main.hs

## How to build
```bash
docker build -t aoc_haskell . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in main.hs).
```bash
docker run -e part=part1 aoc_haskell
```
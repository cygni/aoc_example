# Ruby

This project adds the code to an image

## How to build
```bash
docker build -t aoc18 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in ``main.rb``).
```bash
docker run -e part=part1 aoc18
```

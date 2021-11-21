# Pure Shell

This project adds the code to an image, compiles it and runs the solution script.

## How to build
```bash
docker build -t aoc_shell . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_shell
```

# Python

This project adds the source to a minimal Python image.

## How to build

```bash
docker build -t aoc_python . 
```
## How to run the tests

```bash
python aoc_test.py
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in aoc.py).

### With docker

```bash
docker run -e part=part1 aoc_python
```

### With python (no docker)

```bash
part=part1 python aoc.py
```

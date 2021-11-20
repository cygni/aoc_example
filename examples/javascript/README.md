# Node with yarn

This project adds the code to an image and runs yarn install.

## How to build
```bash
docker build -t aoc02 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in index.js).
```bash
docker run -e part=part1 aoc02
```
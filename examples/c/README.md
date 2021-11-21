# C

This project builds the code in a Docker container and then transfers the resulting statically compiled binary to a new container. 

If you want to run locally as well, you need to get a c compiler. On mac you will be directed how if you try to run `gcc` and don't have it (Otherwise, you can try `sudo xcode-select --install` in a terminal)

## How to build
```bash
docker build -t aoc_c . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in aoc.c).
```bash
docker run -e part=part1 aoc_c
```

Running locally in a terminal, you need to first compile and then run the binary, e.g. `gcc -o aoc aoc.c && ./aoc`
Note that the `-static` flag used in the Dockerfile will not work in a Mac because there aren't any static versions of some needed libraries.
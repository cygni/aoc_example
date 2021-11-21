# Rust

This project builds the code in a Docker container and then transfers the resulting binary to a new alpine container. 

## How to build
```bash
docker build -t aoc_rust . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in src/main.rs).
```bash
docker run -e part=part1 aoc_rust
```
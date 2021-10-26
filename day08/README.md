# .NET Core 5.0

This project builds the code in a Docker container and then transfers the resulting binary to a new container with just the .NET Core runtime. 

## How to build
```bash
docker build -t aoc08 . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in Program.cs).
```bash
docker run -e part=part1 aoc08
```
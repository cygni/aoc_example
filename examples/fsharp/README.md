# F# (.NET Core 5.0)

This project builds the code in a Docker container and then transfers the resulting binary to a new container with just the .NET Core runtime. 

## How to run tests
Open a terminal in this directory and type `dotnet test`

## How to build
```bash
docker build -t aoc_fsharp . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_fsharp
```

To run locally, just type `dotnet run`
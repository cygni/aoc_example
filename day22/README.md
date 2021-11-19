# GNU Smalltalk

## How to build
```bash
docker build -t aoc21 .
```

## How to run in Docker
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in ``main.st``).
```bash
docker run -e part=part1 aoc21
```

## Running locally (on Mac)
GNU Smalltalk installs on a Mac with 

```bash 
brew install gnu-smalltalk
```

Running the code locally is then a simple:
```bash
part=part1 gst main.st
```


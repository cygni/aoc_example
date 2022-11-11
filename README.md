# Example repo for the Cygnified Advent of Code
This repo is an example showing how to structure your own repo in a way that your solutions on [Advent of Code](https://adventofcode.com/) can be analyzed correctly on the [Cygnified version](https://aoc-2022.cygni.se).

## Folder structure
Your solutions must be placed in a folder corresponding to the day that the solutions belong to; `day01`, `day02` etc. There's a script called `create_directories.sh` which you can use to generate all 25 days. Or, if you want you can just execute this in the root of your repo:

```for i in $(seq -w 1 25); do mkdir "day$i"; done```

## Dockerfile to measure execution time
In order to measure execution time, every solultion needs to be place in a `Dockerfile`. This needs to contain a command (`CMD`) that triggers a run of your solution. `Dockerfile` must also copy a file named `./input.txt`, because we use the same input file for everyone. We will then build the image and execute the following: 

```
$ docker build -t "${dockerImage}" .
$ time docker run -e part=part1 "${dockerImage}"
```

### Environment variable for the two parts
As you can see in the example above, the execution time is measured using the environment variable `part`. Every day, there will be a part 1 and part 2 on Advent of Code. Please have a look at the examples (`day01` etc) to see how you can solve this. It's important that the environment variable is setup correctly in order to measure time:

```
$ time docker run -e part=part1 "${dockerImage}"
```

And for part 2:
```
$ time docker run -e part=part2 "${dockerImage}"
```

## Examples of correct structure
All folders in this repo (`day01` etc) contains a simple but correct setup. Please have a look at it.


## Puzzle example and solutions in many different languages
You'll find [here](./examples)

## Any questions?
Don't fret. Let us know in #adventofcode. We're all here to help each other and have fun!

## Day 3 solution template

This shows the basics of the setup needed to participate in the Cygnified AoC with your solution for a given day (in this case day 3 because we are in the `day03` directory). **The directory structure is important.**

The setup must include a `Dockerfile` that includes the solution source code. Your `Dockerfile` must include a `COPY` statement that copies `input.txt` (and possibly other files) from the root of `day02` (in this case) into your image. That is, we will use your individual `puzzle input` provided by Advent of Code when analysing your solution.

From all this magic setup, the Cygnified AoC-engine can create a valid image and you're in the game (and that's awesome).

Shell scripting is fun and all, but we have provided examples for many different languages to get you up and running with your favourite weapons, have a look [here](../examples)

### How to build
`docker build -t aoc03 .`

### How to run
The environment variable `part` specifies which part of the solution to run.

`docker run -e part=part1 aoc03`

**As this is just a template**, all that `part1` and `part2` does is to print the first and last line of `input.txt`, respectively. For a more realistic example, have a look [here](../examples).

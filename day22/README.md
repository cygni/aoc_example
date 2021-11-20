## Day 22 solution template

This shows the basics of the setup needed to participate in the Cygnified AoC with your solution for a given day (in this case day 22 because we are in the `day22` directory). **The directory structure is important.**

The setup must include a `Dockerfile` that includes the solution source code. **Your source code must expect the input data (i.e. the puzzle input) as `input.txt`**.

Please note that, as we want to use the same input for all participants, we will replace your possibly committed `input.txt`. Your `Dockerfile` must include a `COPY` statement that copies `input.txt` (and possibly other files) from the root of `day22` (in this case) into your image, but uploading your puzzle input to Github is not necessary.

From all this magic setup, the Cygnified AoC-engine can create an image, feed it with `input.txt` and register your solution (and that's awesome).

Shell scripting is fun and all, but we have provided examples for many different languages to get you up and running with your favourite weapons, have a look [here](../examples)

### How to build
`docker build -t aoc22 .`

### How to run
The environment variable `part` specifies which part of the solution to run.

`docker run -e part=part1 aoc22`

**As this is just a template**, all that `part1` and `part2` does is to print the first and last line of `input.txt`, respectively. For a more realistic example, have a look [here](../examples/README.md).

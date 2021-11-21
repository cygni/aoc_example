# Julia
If you want to run Julia locally, you need to get it from the [Julia language site](https://julialang.org/)

VSCode and Intellij both have decent julia plugins. You can also code in a Jupyter Notebook.

Fun fact: Julia is actually a LISP at the bottom of it all so it has very powerful macro capabilities and an alternative LISPy tree-expression-syntax.

## How to run tests
From a terminal open in this directory run `julia runtests.jl`

## How to build
```bash
docker build -t aoc_julia . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_julia
```

To run locally, just type `julia app.jl` in the terminal.

Note that Julia has a REPL, so if you just write `julia` in the terminal, you can proceed to write code that gets evaluated interactively.

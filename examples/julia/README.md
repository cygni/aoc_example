# Julia
In physics departments around the world, Fortran is king because of its speed and the existing legacy code, but many also started using Python for simpler exploratory coding. The problem is that Python is dog slow. So some people at MIT came up with the idea of creating a language that would be "as fast as Fortran and as easy as Python". The result is Julia, and they pretty much did it.

One thing that is really different about Julia is multiple dispatch, which means that the selection of which overloaded method variant to use is based on all the parameters, not just the first. It also dispatches on runtime type, so if you create a new type and implement overloads of a few select methods, other methods will just magically work.

Fun fact: Julia is actually a LISP at the bottom of it all so it has very powerful macro capabilities and an alternative LISPy tree-expression-syntax.

If you want to run Julia locally, you need to get it from the [Julia language site](https://julialang.org/)

VSCode and Intellij both have decent julia plugins. You can also code in a Jupyter Notebook.

## How to run tests
From a terminal open in this directory run `julia runtests.jl`

## How to build and run
To run locally, just type `julia app.jl` in the terminal.

Note that Julia has a REPL, so if you just write `julia` in the terminal, you can proceed to write code that gets evaluated interactively.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

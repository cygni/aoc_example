# Prolog (SWI-Prolog)
Prolog is a logic programming language, which is very different from most other programming languages.
Instead of defining functions that you call, you set up rules defining the relationship between the parameters.
Then if you query a rule by putting values in all parameters, you will get either true or false.
But instead of a value you could put in a free variable, in which case you will get all possible values (or combinations of values) for the free variables. In a sense, prolog "functions" can run both forwards and backwards.

The elevator guide to Prolog syntax is that `:-` means something like "is true if", while commas are "logical and" and semi-colons are "logical or". Everything is about determining the logical truth of a statement, or finding those values that can be assigned to the free variables so it becomes true.

We use the [SWI-Prolog implementation](https://www.swi-prolog.org/) and you will have to install it if you want to run locally.

## How to build and run
Since the unix-shebang is set up in the aoc.pl file, you can just run it by `./aoc.pl` in the terminal. Alternatively, `swipl aoc.pl`. You may want to run interactively, in which case you just type `swipl` [see the documentation](https://www.swi-prolog.org/pldoc/man?section=quickstart)

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

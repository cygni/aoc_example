# Erlang
Erlang was developed at Ericsson in Sweden, from the question of "How do you build a system that can handle failure?". By creating a language and runtime environment to answer that question, and adopting a mentality that you have to be able to deal with anything failing at any time, an Erlang system reputedly manage to achieve nine-nines reliability over a six-month period.

Erlang is a good example of "the Actor model", even though Joe Armstrong was unaware of it at the time.

Erlang has been criticized for having a quirky syntax, so you may consider looking at the Elixir language instead, which also runs on the Erlang VM.

To run locally, you would have to [install the erlang tools](https://www.erlang.org/downloads)

## How to build and run
Copile by typing `erlc aoc.erl` in the terminal.
Run with `erl -noshell -s aoc start -s init stop`

A good help is to run an erlang shell where you can type commands interactively. Start a shell by simply entering the `erl` command in a terminal. Type erlang commands and don't forget to end with a `.`!

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

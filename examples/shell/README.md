# Shell (just the basic sh posix shell or Bourne shell)
Although the shell (which you may think of as the terminal, or command line), is mostly used as an interactive command interpreter, it was also designed to be a full-fledged scripting language, with scripts being able to take part as filters in a unix pipeline. The Bourne shell was released with Version 7 Unix in 1979 and replaced earlier, less capable, shell versions, and is now standardized as the posix shell.

It is quite possible to write quite complex systems with shell scripts, especially using the unix pipeline to combine utilities in different combinations. In fact, the Cygni AoC machinery is powered by shell scripts.

There have been attempts to replace the Bourne shell, e.g. with more C-like syntax in c-shell, which was soon surrounded by wreaths of garlic because of its quirkyness, but more modern versions like bash and zsh are just extensions of the basic posix shell. [Tcl](https://www.tcl.tk/about/language.html) was also originally intended to be used as a shell, with a very regular and logical syntax (as a reaction to C-shell). A modern attempt, trying to get away from the text-only flow in the pipeline is [oil shell](https://www.oilshell.org/)

## How to build and run
In unix/linux or Mac, just open up a terminal in this directory and type `./solution.sh` (you may have to `chmod +x solution.sh` first). Otherwise, you could run `sh solution.sh`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)


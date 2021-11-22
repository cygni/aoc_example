# Haskell with ghc
Most functional languages practice strict evaluation, which means that expressions are evaluated as soon as they are bound to variables (e.g. when passed as parameters to functions). Haskell was created as an open standard for a lazy evaluation functional language, which means that values are evaluated only when and if they are actually used. Haskell has also insisted on absolute functional purity, i.e. no side-effects, while other functional languages do allow side-effects more freely. To handle side-effects Haskell came up with the dreaded Monad.

Haskell is older than Java, but has mostly puttered along as a research language, providing quite a lot of interesting results. But if a language gets used in industry, it becomes less easy to do wild research, so the Haskell community have generally tried to "avoid success at all costs", according to Simon Peyton-Jones.

Nonetheless, many people fall in love with the mathematical beauty of Haskell once they "get it", and it is actually starting to be successfully used in production by some companies.

Here's how to [get started with Haskell](https://wiki.haskell.org/Haskell_in_5_steps)

## How to build and run
In your terminal, type `ghc main.hs && part=part1 ./main` (or whatever invocation is necessary for the tools you chose to install).

You can also experiment interactively with code by starting `ghci`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

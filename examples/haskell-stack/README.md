# Haskell with [Stack](https://docs.haskellstack.org/en/stable/README/)
A description of Haskell and a link to get started with Haskell can be found [here](../haskell/README.md).

Running Haskell with external dependencies can be a hassle if you're not using a package manager, therefore we have included this example project using the package manager Stack.
Stack enables you to easily make use of commmunity packages such as: implementations of you favorite datastructures in[containers](https://hackage.haskell.org/package/containers) or a parsing library for reading the input of the day such as [megaparsec](https://hackage.haskell.org/package/megaparsec).
More interesting packages can be found at <https://hackage.haskell.org/packages/browse>.

To make use of these packages you simply add them to `package.yml` like so:

``` yaml
dependencies:
- base >= 4.7 && < 5 # The haskell base package
- containers
- megaparsec
```

When the package version is omitted Stack will choose the latest possible version.

## How to build and run
In your terminal, type `stack build && stack exec aoc-hs-exe`.

You can also experiment interactively with code by running `stack ghci`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

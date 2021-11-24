# Rust
Rust was developed when people at Mozilla got tired of Firefox crashing from memory-handling issues in C code. It features a unique ownership model regulating how memory may be accessed, which has now made Firefox the most stable browser. Rust has been voted most loved language for the past six years in Stack Overflow's annual developer survey. That's got to pique your interest, although be prepared to fight the borrow-checker until you reach enlightenment.

## How to build and run

### To build

`cargo install --path .`

Cargo will tell you where the binary was created, and this is configurable. On a defult installation it might look something like this:

```
Installing aoc v0.1.0 (/home/micke/repos/aoc_example/examples/rust)
Compiling aoc v0.1.0 (/home/micke/repos/aoc_example/examples/rust)
Finished release [optimized] target(s) in 0.33s
Replacing /home/micke/.cargo/bin/aoc
Replaced package `aoc v0.1.0 (/home/micke/repos/aoc_example/examples/rust)` with `aoc v0.1.0 (/home/micke/repos/aoc_example/examples/rust)` (executable `aoc`)
warning: be sure to add `/home/micke/.cargo/bin` to your PATH to be able to run the installed binaries

```

### To run

If you (in whatever way) make the resulting binary part of PATH, then you would simply type `aoc` or perhaps `part=part2 aoc` to run. If not, you have to point it out explicitly:

`part=part1 /home/micke/.cargo/bin/aoc`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

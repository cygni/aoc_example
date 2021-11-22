# C
C was developed to be a portable assembly language for the Unix kernel. Since the simple C compiler shipped free with every Unix box, many thought they could use it for applications as well, instead of paying big money for another language. Bad idea, since C is a double-barrelled foot-machine-gun, as all the buffer overflows in history will attest. But if you ever want to poke about the Linux kernel, C is the thing you will have to learn how to use. And who can resist the charm of a language where both `a[i]` and `i[a]` are equivalent ways to access the same array element (although modern compilers may prohibit it)?

This project builds the code in a Docker container and then transfers the resulting statically compiled binary to a new container. 

If you want to run locally as well, you need to get a c compiler. On mac you will be directed how if you try to run `gcc` and don't have it (Otherwise, you can try `sudo xcode-select --install` in a terminal)

## How to build and run
Running locally in a terminal, you need to first compile and then run the binary, e.g. `gcc -o aoc aoc.c && ./aoc`
Note that the `-static` flag used in the Dockerfile will not work in a Mac because there aren't any static versions of some needed libraries.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

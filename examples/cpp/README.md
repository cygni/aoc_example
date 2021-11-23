# C++
C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".
The language has expanded significantly over time, and modern C++ now has object-oriented, generic, and functional features in addition to facilities for low-level memory manipulation.
It is almost always implemented as a compiled language, and many vendors provide C++ compilers, including the Free Software Foundation, LLVM, Microsoft, Intel, Oracle, and IBM, so it is available on many platforms.

This project builds the code in a Docker container and then transfers the resulting statically compiled binary to a new container. 

## How to build and run
Running locally in a terminal, you need to first compile and then run the binary, e.g. `g++ -o aoc aoc.cpp && ./aoc`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

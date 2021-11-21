# Fortran (gfortran = Fortran95 with some additions)
Fortran is a language that lives on because it is really good at doing maths fast, like for huge astrophysics equations. Fortran's facilities for working with arrays are outstanding. The Fortran compiler can often generate code that is faster than hand-crafted assembler and it is usually faster than C code.

The compiler gfortran comes bundled with gcc which is readily available if you don't have it already.

## How to build and run
If you have many source files, all except the main program first need to be compiled separately, e.g. `gfortran -c a.f90` will create `a.o`. The you compile the object files together with your program, e.g. `gfortran myprog.f a.o b.o`

If you didn't give it another name with the `-o` option to the compiler, your program is run as `./a.out`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

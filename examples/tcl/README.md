# Tcl
Tcl has a very regular syntax with [twelve rules](https://wiki.tcl-lang.org/page/Dodekalogue).
All values (including code) are represented as strings, being converted to the appropriate type as needed.
One interesting feature is `uplevel` that allows you to execute code in a context n levels up in the call stack.
Since 2012, Tcl also has built-in OO capabilities.

The Tk windowing toolkit makes it very easy to create little windowed desktop applications like [this fairly competent text editor](https://github.com/tobega/tvi/blob/main/tvi.tcl)

Tcl is fairly widely used, perhaps mainly for test automation. It has also been used to program the Hubble Space Telescope and to prototype the Mars Pathfinder.

Your system probably already has Tcl (`tclsh` and `wish`) installed, but if not, or if you want the latest version, [here is how to get it](https://www.tcl.tk/software/tcltk/)

## How to build and run
Via the unix shebang, you can just run `./aoc.tcl` in the terminal or you can type `tclsh aoc.tcl`. If you want to do a little interactive programming, just type `tclsh`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

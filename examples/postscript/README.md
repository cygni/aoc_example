# Postscript
Postscript was designed to be extremely portable and easy to implement an interpreter on a printer.
It has a lot of graphic goodies if you want to draw nice pictures, but in adventofcode we'll probably ignore those.

Postscript is rather low-level in that you work directly on "the stack". Executing an operator/procedure will normally
consume the top elements of the stack and leave some result elements on the top of the stack. Everything is done "backwards" with the verb last. You have access to the entire stack and you can also define symbols in dictionaries (by default one called userdict) for later retrieval. You can push and pop dictionaries onthe dictionary stack and symbols in the dictionary stack are in scope for immediate access.

With the above knowledge, chapter 8 on Operators in [the definitive language definition](https://www.adobe.com/content/dam/acom/en/devnet/actionscript/articles/PLRM.pdf) should be all you need to get you going. Oh, strings are a little finicky, you need to allocate a large enough string to fit your needs and you need to make sure you don't lose all references to it if you need it later.

If you want to run Postscript locally, install ghostscript, available in most package managers.

## How to build and run
To run locally, `gs --permit-file-read=./ -spart=part1 aoc.ps`. Or just type `gs` in the terminal and you can play around interactively.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

# GNU Smalltalk
Smalltalk is probably the most "classic object-oriented" programming language. There are many
dialects and implementations out there, but this example uses 
[GNU Smalltalk](https://www.gnu.org/software/smalltalk/).

Smalltalk's syntax is quite different from most other languages, but it's also very simple
and extremely consistent, so it doesn't take long to learn. In fact, the entire language
specification can be printed in readable text on a postcard.

Alan Kay's original vision for Objects was "computers all the way down", where each object was to be seen as a computer receiving messages from its environment. Smalltalk didn't quite reach that idea, perhaps, but it is still probably the purest OO language in existence.

One of the most distinguishing features of Smalltalk is that you would generally program in a live environment and your objects can be evolved to gain new capabilities as the program runs (Smalltalk is dynamically typed). Smalltalk is possibly the most productive language in existence, but probably lost the language wars because you had to pay for it.

## How to build and run (on Mac)
GNU Smalltalk installs on a Mac with 

```bash 
brew install gnu-smalltalk
```

Running the code locally is then a simple:
```bash
part=part1 gst main.st
```

Of course, you might prefer to just program interactively, just start `gst` in the terminal.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)


# Clojure
Clojure is a LISP (the original functional language that could run on a real computer) running on the JVM, so you can access the java SDK pretty easily if you need to. Fans claim that LISP was discovered out of pure mathematics, rather than invented. What is true is that it is homoiconic, which means that code and data all look the same, so it is "easy" to write code that writes code.

Robert "Uncle Bob" Martin claims that we have seen all possible computer languages already and it's time to just pick one. Since he's finally seen the light with the amazing flexibility of LISP, he proposes that clojure should be the one language that everybody should start using.

LISP people are special snowflakes, everyone seems to make their own tools and even their own versions of LISP, but here are
some reasonable choices that can get you started (obviously you need java installed first):
1. Install the [CLI tools](https://clojure.org/guides/getting_started)
2. Install [Leiningen](https://leiningen.org/)

Now you're good to go with just a text editor, but if you use VSCode, the [Calva extension](https://calva.io/) comes recommended, as does the [Cursive plugin](https://cursive-ide.com/) for IntelliJ

## How to run tests
From a terminal open in this directory run `lein test` (although note that clojurians mostly just run stuff in the REPL)

## How to build and run
To run locally, just type `lein run` in the terminal.

If you want to run a REPL, but not through an IDE plugin, you can start one with the `clj` command.

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

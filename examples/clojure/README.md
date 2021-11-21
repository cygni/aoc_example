# Clojure
Clojure is a LISP running on the JVM. You can access the java SDK pretty easily.

LISP people are special snowflakes, everyone seems to make their own tools and even their own versions of LISP, but here are
some reasonable choices that can get you started (obviously you need java installed first):
1. Install the [CLI tools](https://clojure.org/guides/getting_started)
2. Install [Leiningen](https://leiningen.org/)

Now you're good to go with just a text editor, but if you use VSCode, the [Calva extension](https://calva.io/) comes recommended, as does the [Cursive plugin](https://cursive-ide.com/) for IntelliJ

## How to run tests
From a terminal open in this directory run `lein test` (although note that clojurians mostly just run stuff in the REPL)

## How to build
```bash
docker build -t aoc_clojure . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc_clojure
```

To run locally, just type `lein run` in the terminal.

If you want to run a REPL, but not through an IDE plugin, you can start one with the `clj` command.

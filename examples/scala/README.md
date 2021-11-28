# Scala 3

*Insert snarky language description here.*

## Development

[Download and install Scala3](https://www.scala-lang.org/download/scala3.html). This example used the [Coursier](https://get-coursier.io/) tool, so it's really about installing that first, and then let Coursier install Scala.

Once Scala3 is installed, you can run interpreted Scala with `scala3 Main.scala`. Set the environment variable `part` to choose between the two execution options.

You can also choose to compile the Scala code into Java classfiles, to improve execution times.

## Docker

Building the Docker image with the Dockerfile in the project compiles the Scala code. Running the image runs the compiled program. 

Build and run according to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

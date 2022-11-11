# Java with gradle
Java was originally designed for interactive television, but it was too advanced technology for the digital cable television industry at the time. Java had limited success as applets on the web and also powered some desktop applications, but eventually found a welcome home as a backend server language. Along the way, a chip that ran java natively was also developed.

The principles for creating Java programming were "Simple, Robust, Portable, Platform-independent, Secured, High Performance, Multithreaded, Architecture Neutral, Object-Oriented, Interpreted, and Dynamic". The inspiration was a C++-like syntax, without the most obvious flaws, and a simple Smalltalk-like Object Oriented design. Sun also realised that the time for charging money for programming languages had passed, so Java was released for free (as in beer), and Java is now our most beloved workhorse.

If you want to run java locally you will need a jvm. If you don't have a jvm, you can [get one here](https://adoptopenjdk.net/)

## How to run tests
Use the integrated test runner in your IDE or run `./gradlew test`

## How to build and run
You could just type `./gradlew run`

Alternatively, you can run a single file main program directly by `java src/main/java/aoc/App.java`. If you have more source
files you have to compile first

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

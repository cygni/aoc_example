# Kotlin with gradle
Kotlin was designed to be a "better Java" and many who try Kotlin seem to get enthusiastic about it.

If you are already familiar with Java, you have a head start. Why not check out their own [Comparison to Java](https://kotlinlang.org/docs/comparison-to-java.html) for a good overview on the differences?

So far there doesn't seem to be a great movement towards it in the enterprise and ironically the major Kotlin app is an IDE for Java. When Oracle was battling Google over the "not-quite-java" on Android, Kotlin got a lucky political windfall when Google blessed Kotlin as a primary Android language and that seems to be where Kotlin is growing. Kotlin can also be used on iOS and on the javascript VM, although the libraries on each are different. Is that then still the same language or is it just more confusing?

Give it a try, maybe you'll be bitten by the bug!

## How to run tests
Use the integrated test runner in your IDE (if you use IntelliJ, use the Kotest plugin) or run `./gradlew test`

## How to build and run

```bash
part=part2 ./gradlew run #if you omit part, part1 will run. Check out the code and you'll see why.
```

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

import java.io.File

fun main() {
    val input = File("input.txt").readLines().map { it.toInt() }
    val answer = when (System.getenv("part")) {
        "part2" -> solutionPart2(input)
        else -> solutionPart1(input)
    }
    println("Kotlin")
    println(answer)
}

fun solutionPart1(input: List<Int>) = input.sum()

fun solutionPart2(input: List<Int>) = input.reduce(Int::times)
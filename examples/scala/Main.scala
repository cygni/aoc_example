import scala.io.Source

object Main {
    def main(args: Array[String]) = {
        val ints = Source.fromFile("input.txt").getLines.toArray.map(_.toInt)
        val part = sys.env.get("part").getOrElse("part1")
        val result = if part == "part2" then ints.product else ints.sum

        Console.println("Scala")
        Console.println(result)
    }
}
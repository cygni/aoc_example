namespace aoc;

public static class Puzzle
{
    public static int GetSolutionPart1(IEnumerable<int> input) => input.Sum();

    public static int GetSolutionPart2(IEnumerable<int> input) => input.Aggregate((i, j) => i * j);
}
using aoc;

var input = File.ReadLines("input.txt").Select(int.Parse);

var part = Environment.GetEnvironmentVariable("part");

var solution = part switch
{
    "part1" => Puzzle.GetSolutionPart1(input),
    "part2" => Puzzle.GetSolutionPart2(input),
    _ => throw new ArgumentOutOfRangeException(nameof(part), $"Unexpected {nameof(part)} value: '{part}'")
};

Console.WriteLine("C#");
Console.WriteLine(solution);
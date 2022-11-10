using Xunit;

namespace aoc;

public class PuzzleTests
{
    [Fact]
    public void GetSolutionPart1_ReturnsAddedNumbers()
    {
        Assert.Equal(73, Puzzle.GetSolutionPart1(new[] { 17, 56 }));
    }

    [Fact]
    public void GetSolutionPart2_ReturnsMultipliedNumbers()
    {
        Assert.Equal(952, Puzzle.GetSolutionPart2(new[] { 17, 56 }));
    }
}
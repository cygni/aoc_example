using Xunit;

namespace day08.tests {
  public class ProgramTests {
    [Fact]
    public void SolutionPart1_ReturnsFirst() {
      Assert.Equal("17", Program.getSolutionPart1(new int[]{17, 56}));
    }
    [Fact]
    public void SolutionPart2_ReturnsSecond() {
      Assert.Equal("56", Program.getSolutionPart2(new int[]{17, 56}));
    }
  }
}
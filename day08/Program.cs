using System;

namespace day08
{
    class Program
    {
        static int getSolutionPart1()
        {
            return 1337;
        }

        static int getSolutionPart2()
        {
            return 42;
        }

        static void Main(string[] args)
        {
            var part = Environment.GetEnvironmentVariable("part");

            if ("part2".Equals(part)) {
                Console.WriteLine(getSolutionPart2());
            } else {
                Console.WriteLine(getSolutionPart1());
            }
            
        }
    }
}

using System;
using System.Linq;

namespace day08
{
    class Program
    {
        public static int getSolutionPart1(int[] input)
        {
            return input.Sum();
        }

        public static int getSolutionPart2(int[] input)
        {
            return input.Aggregate((i,j) => i * j);
        }

        static void Main(string[] args)
        {
            int[] input = parseInput("input.txt");

            var part = Environment.GetEnvironmentVariable("part");

            Console.WriteLine("C#");
            if ("part2".Equals(part)) {
                Console.WriteLine(getSolutionPart2(input));
            } else {
                Console.WriteLine(getSolutionPart1(input));
            }
            
        }

        static int[] parseInput(string filename) {
            return System.IO.File.ReadLines(filename)
            .Select(line => Int32.Parse(line))
            .ToArray();
        }
    }
}

using System;
using System.Linq;

namespace day08
{
    class Program
    {
        public static string getSolutionPart1(int[] input)
        {
            return input[0].ToString();
        }

        public static string getSolutionPart2(int[] input)
        {
            return input[1].ToString();
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

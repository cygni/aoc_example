import std/[strutils, sequtils, math, os]

let input = readFile("input.txt")
                .strip()
                .splitLines()
                .map(parseInt)

func solve1(nums: openArray[int]): int = sum(nums)
func solve2(nums: openArray[int]): int = prod(nums)

when isMainModule:
  echo "Nim"
  echo case getEnv("part"):
      of "part2": intToStr(solve2(input))
      of "part1", "": intToStr(solve1(input))
      else: "Unknown part"


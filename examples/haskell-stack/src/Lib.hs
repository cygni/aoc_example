module Lib
  ( aoc )
where

import           System.Environment (getEnv)

type Input = [Int]

aoc :: IO ()
aoc = do
  input <- readInput
  part  <- getEnv "part"
  print $ case part of
    "part2" -> solve2 input
    _       -> solve1 input

solve1 :: [Int] -> Int
solve1 = sum

solve2 :: [Int] -> Int
solve2 = product

readInput :: IO Input
readInput = parseInput <$> readFile "input.txt"

parseInput :: String -> Input
parseInput = map read . lines

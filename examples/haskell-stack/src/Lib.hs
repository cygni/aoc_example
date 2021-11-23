module Lib
  ( aoc )
where

import           System.Environment (lookupEnv)

type Input = [Int]

aoc :: IO ()
aoc = do
  input <- readInput
  part  <- lookupEnv "part"
  print $ case part of
    Just "part2" -> solve2 input
    _            -> solve1 input

solve1 :: [Int] -> Int
solve1 = sum

solve2 :: [Int] -> Int
solve2 = product

readInput :: IO Input
readInput = parseInput <$> readFile "input.txt"

parseInput :: String -> Input
parseInput = map read . lines

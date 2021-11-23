module Aoc

let solutionPart1 (input:int[]) = input |> Array.sum

let solutionPart2 (input:int[]) = input |> Array.reduce (*)

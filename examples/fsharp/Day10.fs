module Day10

let solutionPart1 (input:int[]) = input |> Array.sum

let solutionPart2 (input:int[]) = input |> Array.reduce (*)

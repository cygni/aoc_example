module AocTests

open FsUnit.Xunit
open Xunit
open Aoc

let input = [|17; 56|]

[<Fact>]
let ``Solution1 is 73`` () =
  input |> solutionPart1
  |> should equal 73

[<Fact>]
let ``Solution2 is 952`` () =
  input |> solutionPart2
  |> should equal 952

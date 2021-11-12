module Day10Tests

open FsUnit.Xunit
open Xunit
open Day10

[<Fact>]
let ``Solution1 is 1337`` () =
  solutionPart1
  |> should equal "1337"

[<Fact>]
let ``Solution2 is 42`` () =
  solutionPart2
  |> should equal "42"

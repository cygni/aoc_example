// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System
open Aoc

[<EntryPoint>]
let main argv =
    let input = (System.IO.File.ReadLines("input.txt")
        |> Seq.map int
        |> Seq.toArray)

    printfn "F#\n%s" (
        match Environment.GetEnvironmentVariable("part") with
        | null | "part1" -> input |> solutionPart1 |> string
        | "part2" -> input |> solutionPart2 |> string
        | env -> $"Unknown value {env}"
    )
    0 // return an integer exit code
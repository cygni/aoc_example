// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System
open Day10

[<EntryPoint>]
let main argv =
    let input = (System.IO.File.ReadLines("input.txt")
        |> Seq.map int
        |> Seq.toArray)

    printfn "F#\n%s" (
        match Environment.GetEnvironmentVariable("part") with
        | null | "part1" -> solutionPart1 input
        | "part2" -> solutionPart2 input
        | env -> $"Unknown value {env}"
    )
    0 // return an integer exit code
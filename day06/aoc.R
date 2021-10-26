getSolutionPart1 <- function() {
    1337
}

getSolutionPart2 <- function() {
    42
}

part <- Sys.getenv("part")

if (part == "part2") {
    print (getSolutionPart2())
} else {
    print (getSolutionPart1())
}

getSolutionPart1 <- function() {
    1337
}

getSolutionPart2 <- function() {
    42
}

part <- Sys.getenv("part")

if (part == "part1") {
    print (getSolutionPart1())
} else {
    print (getSolutionPart2())
}

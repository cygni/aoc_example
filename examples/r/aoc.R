library("purrr")

input <- purrr::map(readLines("input.txt"), strtoi)

getSolutionPart1 <- function() {
    purrr::reduce(input, `+`)
}

getSolutionPart2 <- function() {
    purrr::reduce(input, `*`)
}

part <- Sys.getenv("part", unset = "part1")

if (part == "part1") {
    print (getSolutionPart1())
} else if (part == "part2") {
    print (getSolutionPart2())
} else {
    print (paste("Unknown part", part, sep=" "))
}

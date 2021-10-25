package main

import (
	"fmt"
	"os"
)

func getSolutionPart1() int {
    return 1337
}

func getSolutionPart2() int {
    return 42
}

func main() {
	part := os.Getenv("part")

	if part == "part1" {
		fmt.Println(getSolutionPart1())
	} else {
		fmt.Println(getSolutionPart2())
	}
}
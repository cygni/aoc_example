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

	if part == "part2" {
		fmt.Println(getSolutionPart2())
	} else {
		fmt.Println(getSolutionPart1())
	}
}
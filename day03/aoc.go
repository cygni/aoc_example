package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getSolutionPart1() int {
    return 1337
}

func getSolutionPart2() int {
    return 42
}

func parseInput(input string) ([]int, error) {
	var ints []int

	lines := strings.Split(strings.TrimSpace(input), "\n")

	for _, line := range lines {
		i, err := strconv.Atoi(line)
		if err != nil {
			return nil, err
		}

		ints = append(ints, i)
	}

	return ints, nil
}

func main() {
	part := os.Getenv("part")

	if part == "part2" {
		fmt.Println(getSolutionPart2())
	} else {
		fmt.Println(getSolutionPart1())
	}
}
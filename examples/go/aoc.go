package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strconv"
	"strings"
)

func getSolutionPart1(input []int) int {
	sum := 0
	for _, value := range input {
		sum += value
	}
	return sum
}

func getSolutionPart2(input []int) int {
	product := 1
	for _, value := range input {
		product *= value
	}
	return product
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
	inputBytes, err := ioutil.ReadFile("input.txt")
	if err != nil {
		panic("couldn't read input")
	}

	input, err := parseInput(string(inputBytes))
	if err != nil {
		panic("couldn't parse input")
	}

	fmt.Println("Go")
	part := os.Getenv("part")

	if part == "part2" {
		fmt.Println(getSolutionPart2(input))
	} else {
		fmt.Println(getSolutionPart1(input))
	}
}

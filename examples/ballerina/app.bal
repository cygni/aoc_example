import ballerina/io;
import ballerina/os;

int[] input = check readInput();

public function main() {
    io:println("Ballerina");
    string part = os:getEnv("part");
    io:println(solve(part));
}

function readInput() returns int[]|error {
    string[] lines = check io:fileReadLines("input.txt");
    int[] numbers = [];
    foreach var line in lines {
      numbers.push(check int:fromString(line));
    }
    return numbers;
}

function solve(string part) returns string {
    match part {
      ""|"part1" => {
        return solutionPart1().toString();
      }
      "part2" => {
        return solutionPart2().toString();
      }
      _ => {
        return "Unknown part " + part;
      }
    }
}

function solutionPart1() returns int {
    return input.reduce(function (int a, int b) returns int {return a + b;}, 0);
}

function solutionPart2() returns int {
    int product = 1;
    foreach int i in input {
      product *= i;
    }
    return product;
}


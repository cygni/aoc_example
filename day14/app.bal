import ballerina/io;
import ballerina/os;

int[] input = check readInput();

public function main() {
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
        return solutionPart1();
      }
      "part2" => {
        return solutionPart2();
      }
      _ => {
        return "Unknown part " + part;
      }
    }
}

function solutionPart1() returns string {
    return input[0].toString();
}

function solutionPart2() returns string {
    return input[1].toString();
}


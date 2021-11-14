import ballerina/io;
import ballerina/os;

public function main() {
    string part = os:getEnv("part");
    io:println(solve(part));
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
    return "1337";
}

function solutionPart2() returns string {
    return "42";
}


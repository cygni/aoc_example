const fs = require('fs')

function inputDataLines(filename="input.txt") {
    return fs.readFileSync(filename).toString().split("\n")
}

function getSolutionPart1() {
    return inputDataLines()[0];
}

function getSolutionPart2() {
    return inputDataLines()[1];
}

const part = process.env.part || "part1";

if (part === "part1")
    console.log(getSolutionPart1());
else
    console.log(getSolutionPart2());
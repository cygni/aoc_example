const fs = require('fs')

function inputDataLinesIntegers(filename="input.txt") {
    return fs.readFileSync(filename).toString().trim().split("\n").map((x)=>parseInt(x))
}

function getSolutionPart1() {
    return inputDataLinesIntegers().reduce((x,y)=>x+y)
}

function getSolutionPart2() {
    return inputDataLinesIntegers().reduce((x,y)=>x*y)
}

console.log("Javascript")
const part = process.env.part || "part1"

if (part === "part1")
    console.log(getSolutionPart1())
else
    console.log(getSolutionPart2())

module.exports = {
    getSolutionPart1, getSolutionPart2, inputDataLinesIntegers
}
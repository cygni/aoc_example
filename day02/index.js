function getSolutionPart1() {
    return 1337;
}

function getSolutionPart2() {
    return 42;
}

const part = process.env.part || "part1";

if (part === "part1")
    console.log(getSolutionPart1());
else
    console.log(getSolutionPart2());
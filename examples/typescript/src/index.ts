import * as fs from "fs";
import path from "path";
import addAll from "./addAll";
import multiplyAll from "./multiplyAll";

const readInput = (filename = "../input.txt"): number[] =>
  fs
    .readFileSync(path.resolve(__dirname, filename))
    .toString()
    .trim()
    .split("\n")
    .map((x) => parseInt(x));

export const solutionOne = (): number => addAll(readInput());
export const solutionTwo = (): number => multiplyAll(readInput());

const part: string = process.env.part || "part1";

if (part === "part1") {
  console.log(solutionOne());
} else {
  console.log(solutionTwo());
}

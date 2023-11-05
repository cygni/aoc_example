import { file } from 'bun'

const input = {
  s: await file('input.txt').text(),
  get parse() {
    return this.s.split('\n').map((x) => Number(x))
  },
}

const add = (a: number, b: number) => a + b
const mul = (a: number, b: number) => a * b

export const day01 = {
  part1: () => input.parse.reduce(add),
  part2: () => input.parse.reduce(mul),
}

process.env.part === 'part1' && console.log(day01.part1())
process.env.part === 'part2' && console.log(day01.part2())

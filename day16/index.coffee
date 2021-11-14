fs = require 'fs'
input_data_lines = () -> 
    fs.readFileSync("input.txt", "utf8").toString().split("\n")

get_solution_part1 = () -> input_data_lines()[0]
get_solution_part2 = () -> input_data_lines()[1]

result = if process.env.part == "part1" then get_solution_part1() else get_solution_part2()
console.log result

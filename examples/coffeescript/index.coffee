fs = require 'fs'

# returns an array with all lines in the file, each converted to integer
input_data_lines = () -> 
    fs.readFileSync("input.txt", "utf8").toString().split("\n").map (n) -> parseInt(n)

get_solution_part1 = () -> input_data_lines().reduce (x,y) -> x+y # adds all integers in the file
get_solution_part2 = () -> input_data_lines().reduce (x,y) -> x*y # multiplies all integers in the file

result = if process.env.part == "part2" then get_solution_part2() else get_solution_part1()
console.log result

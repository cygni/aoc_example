get_solution_part1 = () -> 1337
get_solution_part2 = () -> 42

result = if process.env.part == "part1" then get_solution_part1() else get_solution_part2()
console.log result

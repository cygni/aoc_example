def get_solution_part1
    puts 1337
end

def get_solution_part2
    puts 42
end

if ENV["part"] == "part2" 
    get_solution_part2
else
    get_solution_part1
end

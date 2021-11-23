# returns an array with all lines in the file, each item converted to integer
def file_content(filename="input.txt")
    File.open(filename).readlines().map(&:to_i)
end

def get_solution_part1
    file_content.inject(:+) # sums all integers in the file
end

def get_solution_part2
    file_content.inject(:*) # multiplies all integers in the file
end

puts "Ruby"

if ENV["part"] == "part2" 
    puts get_solution_part2
else
    puts get_solution_part1
end

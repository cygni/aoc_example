include("solutions.jl")

input = open("input.txt") do file
  [parse(Int32, line) for line in eachline(file)]
end

println("Julia")

part = get(Base.ENV, "part", "part1")
println(if part == "part1"
  solutionpart1()
elseif part == "part2"
  solutionpart2()
else
  "Unknown part " * part
end)

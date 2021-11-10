function solutionpart1()
  "1337"
end

function solutionpart2()
  "42"
end

part = get(Base.ENV, "part", "part1")
println(if part == "part1"
  solutionpart1()
elseif part == "part2"
  solutionpart2()
else
  "Unknown part " * part
end)

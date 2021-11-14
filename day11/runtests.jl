using Test

include("solutions.jl")

input = [17, 56]

@testset "basic tests" begin
  @test solutionpart1() == "17"
  @test solutionpart2() == "56"
end
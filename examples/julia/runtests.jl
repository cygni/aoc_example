using Test

include("solutions.jl")

input = [17, 56]

@testset "basic tests" begin
  @test solutionpart1() == 73
  @test solutionpart2() == 952
end
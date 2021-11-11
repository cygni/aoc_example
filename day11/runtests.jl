using Test

include("solutions.jl")

input = "test"

@testset "basic tests" begin
  @test solutionpart1() == "1337"
  @test solutionpart2() == "42"
  @testset "sanity check" begin
    @test latebinding() == "test"
  end
end
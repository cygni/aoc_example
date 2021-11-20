% hello world program
-module(aoc).
-import(lists,[nth/2]).
-export([start/0]).

start() -> 
  Input = readlines("input.txt"),
  Part = os:getenv("part", "part1"),
  if 
    Part == "part2" ->
      getSolutionPart2(Input);
    true -> 
      getSolutionPart1(Input)  
  end.

getSolutionPart1(Input) -> io:fwrite("~p~n",[nth(1,Input)]).
getSolutionPart2(Input) -> io:fwrite("~p~n",[nth(2,Input)]).

readlines(Filename) ->
    {ok, Text} = file:read_file(Filename),
    string:split(Text, "\n").
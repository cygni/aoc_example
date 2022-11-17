% aoc example program
-module(aoc).
-import(lists,[foldl/3,map/2,sum/1]).
-export([start/0, do_work/0]).

start() -> 
  Input = map(fun erlang:list_to_integer/1, readlines("input.txt")),
  Part = os:getenv("part", "part1"),
  Worker = spawn(aoc, do_work,[]),
  if 
    Part == "part2" ->
      Worker ! {part2, Input};
    true -> 
      Worker ! {part1, Input} 
  end.

do_work() ->
  receive
    {part1, Input} -> io:fwrite("~p~n",[sum(Input)]);
    {part2, Input} -> io:fwrite("~p~n",[foldl(fun(X, Prod) -> X * Prod end, 1, Input)])
  end.

readlines(Filename) ->
    {ok, Blob} = file:read_file(Filename),
    map(fun erlang:binary_to_list/1, string:split(Blob, "\n")).
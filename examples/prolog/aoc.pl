#!swipl

getLines(L):-
  setup_call_cleanup(
    open('input.txt', read, In),
    readData(In, L),
    close(In)
  ).

readData(In, L):-
  read_line_to_string(In, H),
  (   H == end_of_file
  ->  L = []
  ;   number_string(N, H),
      L = [N|T],
      readData(In,T)
  ).

list_product([],1).
list_product([H|T], Product) :-
    list_product( T, Product1),
    Product is H * Product1.

:- initialization(main, main).

main(_):-
  writeln('Prolog'),
  getLines(L),
  (   not(getenv('part', _))
  ->  P = 'part1'
  ;   getenv('part', P)
  ),
  (   P == 'part1' -> sum_list(L,S), writeln(S)
  ;   list_product(L,V), writeln(V)
  ).

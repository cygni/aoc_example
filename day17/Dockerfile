FROM erlang:24.1.4.0-alpine as BASE
WORKDIR /src
COPY ["./aoc.erl", "./input.txt", "./"]
RUN erlc aoc.erl
CMD erl -noshell -s aoc start -s init stop

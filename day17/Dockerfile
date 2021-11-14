FROM erlang:24.1.4.0-alpine as BASE
WORKDIR /src
COPY ./aoc.erl .

RUN erlc aoc.erl

FROM erlang:24.1.4.0-alpine
COPY --from=BASE /src/aoc.beam /src/aoc.beam
WORKDIR /src
COPY input.txt .
RUN ls -al
CMD erl -noshell -s aoc start -s init stop

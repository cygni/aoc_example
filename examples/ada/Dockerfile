FROM ubuntu:focal as BASE
RUN apt-get update
RUN apt-get -y install gnat-9
RUN apt-get -y install gprbuild
COPY . .
RUN gprbuild -p -P app.gpr
COPY input.txt .
CMD ["obj/aoc"]
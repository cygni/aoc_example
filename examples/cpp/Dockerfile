FROM frolvlad/alpine-gxx as BASE
COPY aoc.cpp .
RUN g++ -static aoc.cpp -o /bin/aoc

FROM scratch
COPY --from=BASE /bin/aoc /bin/aoc
COPY input.txt .
ENTRYPOINT ["/bin/aoc"]

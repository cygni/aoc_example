FROM haskell:8.10.7 as BUILD
WORKDIR /src
COPY . .
RUN stack --local-bin-path /bin install
ENTRYPOINT [ "/bin/aoc-hs-exe" ]

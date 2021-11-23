FROM rust:1.56 as builder
WORKDIR /usr/src/aoc
COPY . .
RUN cargo install --path .

FROM rust:1.56-slim
COPY --from=builder /usr/local/cargo/bin/aoc /usr/local/bin/aoc
COPY input.txt .
CMD ["aoc"]

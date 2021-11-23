FROM rust:1.56 as builder
WORKDIR /usr/src/aoc
COPY . .
RUN cargo install --path .

FROM rust:1.56-slim
#RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/aoc /usr/local/bin/aoc
COPY input.txt .
CMD ["aoc"]

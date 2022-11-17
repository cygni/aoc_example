FROM swift:latest as builder
WORKDIR /root
COPY . .
RUN swift build -c release

FROM swift:slim
WORKDIR /root
COPY --from=builder /root .
CMD [".build/release/AoC"]


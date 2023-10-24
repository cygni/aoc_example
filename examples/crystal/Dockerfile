FROM crystallang/crystal:1.10-alpine
COPY . .
RUN crystal build solution.cr --static
CMD ["./program"]
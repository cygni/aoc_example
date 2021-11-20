FROM alpine
RUN apk add ghostscript
COPY . .
CMD gs --permit-file-read=./ -spart=$part aoc.ps

FROM swipl AS build
COPY aoc.pl .
RUN swipl --stand_alone=true -o app -c  aoc.pl
FROM alpine
COPY --from=build app .
COPY input.txt .
CMD [ "./app" ]
FROM swipl
COPY aoc.pl .
RUN swipl --stand_alone=true -o app -c  aoc.pl
COPY input.txt .
CMD [ "./app" ]
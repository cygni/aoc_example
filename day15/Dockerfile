FROM postgres:alpine
RUN mkdir /home/postgres
RUN chown postgres /home/postgres
WORKDIR /home/postgres
USER postgres
ENV ECHO off
RUN initdb -D aocdb && pg_ctl -D aocdb -l logfile start && createdb aoc && pg_ctl -D aocdb stop
COPY input.txt .
COPY app.sql .
CMD pg_ctl -D aocdb -l logfile start && psql aoc -q -f app.sql
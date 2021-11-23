# SQL (Postgresql)
You may not think of SQL as a programming language, but when they added recursive CTEs it became Turing complete (by accident, really).
This example chooses to use the Postgresql database, although you could go with MariaDB or any other database of your choice.

If you learn to use the power of SQL you will never want to use Hibernate again.

Warning, though, problems that rely heavily on iteration can be challenging to get to work when you have to rely on window functions and recursive CTEs. You could drop into the proprietary PL/pgSQL language, but where's the fun in that?

If you want to run SQL locally, you need to get a database engine, we use [Postgresql](https://www.postgresql.org/)

## How to build and run

To run locally, you need to set up and start a database server. Normally, the database would be run as a service on a different machine,
and the [Docker base image we use](https://hub.docker.com/_/postgres) would just start a database server by default. Or it could be used to run as a client process interactively. We just use the installed software and do both of those things in our Dockerfile. To set things up:
```bash
initdb -D mydatadirectory # initialize a postgresql instance in the given directory
pg_ctl -D mydatadirectory start # Starts as a background service. Alternatively "postgresql -D mydatadirectory" runs as a foreground process
createdb myaocdb
```

Then to run your script, just type `psql myaocdb < app.sql` in the terminal.

Of course, you can run it interactively and experiment as you go by starting a session with `psql myaocdb`

## Other explorations
SQL has been criticized for not being mathematically pure, especially for allowing NULL and duplicate rows (i.e. a bag instead of a set of rows). An attempt to remedy this was set out in "The third manifesto" by Date&Darwen and one implementation of those ideas is the language TutorialD, whaich can be run in [Rel DB](https://reldb.org/c/)

The power of relational algebra can also be explored in [Tailspin](https://github.com/tobega/tailspin-v0/blob/master/TailspinReference.md#relations) (more third-manifesto-like), [Ballerina](https://ballerina.io/learn/by-example/table-syntax.html?is_ref_by_example=true) and of course [LINQ in C#](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/linq/standard-query-operators-overview)

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

# Exempelrepo för Cygnifierad Advent of Code
Detta repo är ett exempel på hur du bör strukturera ditt repo för att dina lösningar på [Advent of Code](https://adventofcode.com/) ska kunna analyseras på ett korrekt sätt av den [Cygnifierade varianten](https://cygni.github.io/aoc).

## Katalogstruktur
Varje dags lösningar måste placeras i en katalog med motsvarande namn; `day01`, `day02`, ..., `day25`. Det finns ett hjälpskript du kan använda för att generera katalogstrukturen: `create_directories.sh`

## Dockerfile för att mäta exekveringstid
För att vi ska kunna mäta exekveringstid behöver varje dags lösning placeras i en Dockerfile. Denna bör innehålla ett CMD som triggar start av lösningen. Vi mäter nämligen exekveringstiden genom följande.

```
$ time docker run -e part=part1 "${dockerImage}"
```

### Miljövariabel för de två delmomenten
Som du ser i exemplet ovan hur exekveringstiden mäts så anges en miljövariabel `part`. Varje dags problem under Advent of Code har två nivåer part1 och part2. Se exempeldagarna i detta repo för att se hur du kan lösa detta. Det viktiga för att det ska kunna mätas är just att miljövariabeln kan sättas vid uppstart av dockercontainern för part1.

```
$ time docker run -e part=part1 "${dockerImage}"
```

Och för part2.
```
$ time docker run -e part=part2 "${dockerImage}"
```

## Innhåll för respektive exempeldag

### Day 01
Java with Gradle

### Day 02
Node with yarn

### Day 03
Go

### Day 04
Python

### Day 05
C

### Day 06 
R

### Day 07
Rust

### Day 08
.NET Core 5.0

### Day 09
Tailspin

### Day 10
F# (fsharp)

### Day 11
Julia

### Day 12
Dart

### Day 13
Clojure (lisp), built with leiningen

### Day 14
Ballerina

### Day 15
Postgresql

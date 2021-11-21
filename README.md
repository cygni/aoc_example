# Exempelrepo för Cygnifierad Advent of Code
Detta repo är ett exempel på hur du ska strukturera ditt repo för att dina lösningar på [Advent of Code](https://adventofcode.com/) ska kunna analyseras på ett korrekt sätt av den [Cygnifierade varianten](https://cygni.github.io/aoc).

## Katalogstruktur
Varje dags lösningar måste placeras i en katalog med motsvarande namn; `day01`, `day02`, ..., `day25`. Det finns ett hjälpskript du kan använda för att generera katalogstrukturen: `create_directories.sh` eller ställ dig i ditt repo och exekvera följande i en terminal:

```for i in $(seq -w 1 25); do mkdir "day$i"; done```

## Dockerfile för att mäta exekveringstid
För att vi ska kunna mäta exekveringstid behöver varje dags lösning placeras i en Dockerfile. Denna bör innehålla ett CMD som triggar start av lösningen. Dockerfile måste även kopiera in en fil som heter `./input.txt` med indatat. Vi mäter nämligen exekveringstiden genom att lägga in samma indata för alla, bygga docker imagen och exekvera följande:

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

## Exempel på korrekt struktur
Samtliga dagars mappar i det här repot (`day01` osv) innehåller en enkel men korrekt variant på den struktur som krävs.


## Exempel på uppgift och mallar för olika språk
Hittar du [här](./examples)

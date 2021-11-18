# Exempelrepo för Cygnifierad Advent of Code
Detta repo är ett exempel på hur du bör strukturera ditt repo för att dina lösningar på [Advent of Code](https://adventofcode.com/) ska kunna analyseras på ett korrekt sätt av den [Cygnifierade varianten](https://cygni.github.io/aoc).

Varje dag innehåller en standardiserad lösning av våran [exempeluppgift](#exempeluppgift) med filinläsning, datakonverting mellan sträng och heltal, beräkning av svar och i de flesta fall
även exempel på enhetstest.

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

## Exempeluppgift

#### Är det första gången du kör Advent of Code? Kul! Här kommer ett _exempel_ på hur en uppgift kan se ut.

---
ZING! Your head says (or something like that) and you find yourself sitting on a carpet, almost blinded by the flourescent lights above you. What happened? Moments ago, you were partying with the elves on the snow planet. 

Oh yeah, now you remember. The master elve, Jonir, poured you a hot beverage and said _"Here, drink. Only you can solve this quest"._ You grab after the mug you just held, but it seems like it vanished during the teleportation. But...what's this? A note? You read it carefully:

_Find the Cygni door. Next to it, there will be a device with buttons. You have to enter the correct code in order for the device to unlock the door. The numbers are written on the back of this note. Add them together and enter the number._

**Example:** If you have the numbers `1337` and `42`, the device code would be `1379`.

You flip the note and read the numbers (your `puzzle input`).

What is the code? `[Insert answer]`

---

Det hela är alltså uppbyggt med en story där varje ord kanske inte har superstor relevans kring själva problemet, utan det gäller att identifiera vad som är viktigt. I varje uppgift finns ett exempel för att ytterligare förtydliga vad som ska lösas. Exemplena är bra att ha medan du löser uppgiften, men för att komma vidare måste du lösa problemet med din angivna puzzle input, en textfil som kan se ut till exempel såhär:

```
233
12
435
...
...
...
918
```

Det kan vara flera hundra rader, det är inget som går att göra huvudräkning på utan du måste programmera. Förutsatt att du skriver in rätt svar, låser du upp del 2. Här gäller _samma_ puzzle input, men ett nytt problem som ska lösas. Exempel:

---

-- PART TWO--

You enter the code on the device, something makes a whirring sound and the door opens. You step inside. Wow, what is this place? 

Glass walls, sofas, a pinball machine. What year is it even? Nevermind, there is no time to ponder, there was more written on the note! 

_"...when you get inside, you must unlock the master computer in order to submit my time report immediately!"._ 

_Classic Jonir_ you think, he's always been sloppy. 

_"Use the same numbers but multiply them. And I know what you think, but my password policy is actually rock solid!"_

Example: If you have the numbers `1337` and `42`, the password would be `56154`

Using the same `puzzle input`, what is Jonir's rock solid password? `[Insert answer]`

---

## Innehåll för respektive exempeldag

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
SQL (Postgresql)

### Day 16
Coffeescript

### Day 17
Erlang

### Day 18
Ruby

### Day 19
Kotlin with Gradle

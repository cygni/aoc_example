# Exempeluppgift och språkmallar

För att alla ska komma igång utan krångel med det/de språk de vill köra har vi här lagt upp färdiga mallar med `Dockerfile`, input-inläsning och lite annat som är 100% Cygnifierad AoC-certified, för en mängd olika språk. Det är bara att botanisera bland katalogerna ovan, kanske hittar du rentav något nytt (eller gammalt) språk att prova?

Vi har allt från moderna versioner av LISP och FORTRAN som började sina banor på 1950-talet till Ballerina som kom i version 1 2018 och är nu omarbetat i beta3 av version 2. Allt från ren objektorientering i Smalltalk och Ruby till renaste funktioner i Haskell. Från Javascript som enligt myten slarvigt slängdes ihop på en vecka, till Ada som frambringades efter en gedigen kravinsamling och en designtävling med 16 lag. Från C som finns i botten någonstans på varje modern dator och Postscript som finns i de flesta skrivare, till Tailspin som, såvitt känt, bara använts av en enda person.

Som grädde på moset är samtliga mallar lösningar på den exempeluppgift vi författat ihop här nedanför. Tanken med exempeluppgiften är att framförallt ge våra debutanter en bild av hur en AoC-uppgift kan se ut. **Eventuella paralleller mellan karaktärer i exemplet och Jon Persson är helt dina egna isåfall, vi tar inget ansvar.**  

Eller så kör du helt enkelt dina egna favoriter. För mer läsning om programmeringsspråk kanske artikeln ["The perfect programming language"](https://cygni.se/the-perfect-programming-language/) kan vara av intresse.

### Exempeluppgift

---
ZING! Your head says (or something like that) and you find yourself sitting on a carpet, almost blinded by the flourescent lights above you. What happened? Moments ago, you were partying with the elves on the snow planet. 

Oh yeah, now you remember. The master elf, Jonir, poured you a hot beverage and said _"Here, drink. Only you can solve this quest"._ You grab after the mug you just held, but it seems like it vanished during the teleportation. But...what's this? A note? You read it carefully:

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

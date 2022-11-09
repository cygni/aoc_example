# Puzzle example and language templates

To make sure that everyone gets up to speed without fuzz in the language(s) they want, we've prepared templates for a wide variety of languages. These include a `Dockerfile`, reading from an input-file and some other sweet stuff in a 100% Cygni-AoC-certifed manner. Meaning, follow these templates for the language you want to use and everything should work just fine. Is the language of your choice missing a template? Feel free to create a PR, don't hesitate to ask for help in #adventofcode!

We've got it all. Modern versions of LISP and FORTRAN, languages that saw the light of day in the 50's, all the way to Ballerina that released v1 in 2018. Object oriented Smalltalk and Ruby, pure functional Haskell. Developed-in-a-haste Javascript (according to the myth), 16-team-design-competition Ada. Of course we have a template for C, a language that exists somewhere in all modern computers and Postscript that reside in most printers. But also Tailspin that as far as we know, only have been used by two people. If you want to read more about programming languages, the article ["The perfect programming language"](https://cygni.se/the-perfect-programming-language/) is a good read.

Pretty cool, huh? Well, as icing on the cake, all the templates also happen to be solutions to the example puzzle below. If you are new to Advent of Code, this gives a somewhat true picture of how a puzzle can look.

### Puzzle Example

---
ZING! Your head says (or something like that) and you find yourself sitting on a carpet, almost blinded by the flourescent lights above you. What happened? Moments ago, you were partying with the elves on the snow planet. 

Oh yeah, now you remember. The master elf, Jonir, poured you a hot beverage and said _"Here, drink. Only you can solve this quest"._ You grab after the mug you just held, but it seems like it vanished during the teleportation. But...what's this? A note? You read it carefully:

_Find the Cygni door. Next to it, there will be a device with buttons. You have to enter the correct code in order for the device to unlock the door. The numbers are written on the back of this note. Add them together and enter the number._

**Example:** If you have the numbers `1337` and `42`, the device code would be `1379`.

You flip the note and read the numbers (your `puzzle input`).

What is the code? `[Insert answer]`

---

Both in this example and in the real Advent of Code, the puzzles are built around a story. Now, the story itself may not be super relevant to solving the problem, it's up to you to identify what's important. In every puzzle, there are examples that are meant to clarify what task you need to carry out. These are great to use as tests for your own solution. But, you must solve your problem with the provided _puzzle input_ (sometimes several hundred lines long, meaning that you have to _code_ to solve your problem). There will be a link to it on your puzzle page (the puzzle input is different for different users, you will get the wrong answer if you don't use your own). For this particular puzzle, it might look something like this:

```
233
12
435
...
...
...
918
```

If you provide the right answer, part two will be unlocked. Note that part two uses _the same_ puzzle input, but typically a tougher problem.

---

-- PART TWO--

You enter the code on the device, something makes a whirring sound and the door opens. You step inside. Wow, what is this place? 

Glass walls, sofas, a pinball machine. What year is it even? Nevermind, there is no time to ponder, there was more written on the note! 

_"...when you get inside, you must unlock the master computer in order to submit my time report immediately!"._ 

_Classic Jonir_ you think, he's always been sloppy. 

_"Use the same numbers but multiply them. And I know what you think, but my password policy is actually rock solid!"_

Example: If you have the numbers `1337` and `42`, the password would be `56154`

Using the same `puzzle input`, what is Jonir's rock solid password? `[Insert answer]`

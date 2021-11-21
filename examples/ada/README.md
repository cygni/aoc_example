# Ada
Ada may be the most thoroughly designed language in history, with several sets of ever-hardening requirements gathered for elimination rounds in a design competition where 16 teams started. Ada was originally developed when a good computer language could bring big money, but when finally released it couldn't get a foothold over the free options C and Java. But if you ever write code where a bug could mean a human dies or something explodes, I hope you choose to write your code in Ada.

If you want to run Ada locally, you need to [get it here](http://getadanow.com/). Note that for Accenture Mac,
you would need to [override the unsigned package protection](https://cygni.slack.com/archives/C02C6C7U8N8/p1637180702473000)

Both VSCode and IntelliJ have extensions from AdaCore

[Here's a tutorial for Ada](https://learn.adacore.com/courses/intro-to-ada/index.html)

## How to build and run
Building locally, just do `gprbuild -p -P app.gpr`

To run locally, first build, then run `obj/aoc`, or combine the two and set env `gprbuild -p -P app.gpr && part=part2 obj/aoc`

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

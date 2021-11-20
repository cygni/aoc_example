# Ada
If you want to run Ada locally, you need to [get it here](http://getadanow.com/). Note that for Accenture Mac,
you would need to [override the unsigned package protection](https://cygni.slack.com/archives/C02C6C7U8N8/p1637180702473000)

Both VSCode and IntelliJ have extensions from AdaCore

[Here's a tutorial for Ada](https://learn.adacore.com/courses/intro-to-ada/index.html)

## How to build
```bash
docker build -t aoc21 . 
```

Building locally, just do `gprbuild -p -P app.gpr`

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly.
```bash
docker run -e part=part1 aoc21
```

To run locally, first build, then run `obj/aoc`, or combine the two and set env `gprbuild -p -P app.gpr && part=part2 obj/aoc`

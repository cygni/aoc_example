# Javascript (Node with yarn)
Netscape at one point decided to integrate Scheme (a LISP dialect) as a scripting language in their browser, and they were also negotiating how to integrate Java. But then they changed their mind and decided to create a new language and the marketing department decided to try and steal some of Java's glory by changing the name from LiveScript to Javascript, even though the resemblance to Java was fairly superficial.

Some of the design decisions to make it easy to use turned out to be really bad and they haunt us to this day, but Javascript is also a really flexible language and you can occasionally write some really nice code, as long as you don't try to write Java code. Even though Javascript pretends to have classes these days, it really doesn't, with an inheritance model based on prototypes instead. Trying to ignore that is probably a mistake.

Every professional programmer has to use Javascript to some extent, so it's really helpful to learn how to use it better. There are probably also ten times as many non-professional programmers using Javascript, making it probably the most used language in the world. Crap language or not, it is many people's first love and they will hold it fondly forever.

If you want to run locally, you need to [get node](https://nodejs.org/en/). If you want to use any external packages, this project is set up to [use yarn](https://yarnpkg.com/)

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

## Development

To run without Docker, just do `node index.js`

To run the unit tests (found in the `test` directory), run this before first time: 

`yarn install`

Then run this for testing:

`yarn test`
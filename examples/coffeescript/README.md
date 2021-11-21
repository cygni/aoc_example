# Coffeescript

## The Coffeescript language

The 1.0 version of [Coffeescript](https://coffeescript.org/) was released in 2010 as an enhanced
alternative to Javascript (which was still very clunky at that time). Coffeescript took 
inspiration from Ruby, Python and Haskell to make a very nice language. 

Now, in 2021, most of the strengths and features in Coffeescript has made it into Javascript 
proper, making Coffeescript less relevant, and probably not recommended for production use. 
Still, it's a fun language to play around with.

## How to build
```bash
docker build -t aoc_coffescript . 
```

## How to run
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in ``index.coffee``).
```bash
docker run -e part=part1 aoc_coffescript
```

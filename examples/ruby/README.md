# Ruby

Example AoC project in Ruby (built for Cygni)

## The Ruby language

[Ruby](https://www.ruby-lang.org/en/) is a dynamically typed scripting language, 
similar to Python in features and usability (in [my](https://github.com/robu) humble opinion),
although the "look&feel" is quite different from Python. 
Its popularity, and to some extent decline, corresponds well to the popularity of its most 
well-known web framework, [Ruby on Rails](https://rubyonrails.org/).

## How to build Docker image
```bash
docker build -t aoc_ruby . 
```

## How to run Docker image
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in ``main.rb``).
```bash
docker run -e part=part1 aoc_ruby
```

## Development 

To run outside the container during development, just do
```bash
part=part1 ruby main.rb
```

To run the unit tests, you need to have the ``test-unit`` gem installed, which you get by
running 

```bash 
bundle install
```

Then try:
```bash
ruby test/main_test.rb
```

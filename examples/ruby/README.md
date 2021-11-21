# Ruby

Example AoC project in Ruby (built for Cygni)

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
running ``bundle install``. Then try:
```bash
ruby test/main_test.rb
```

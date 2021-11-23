# Ruby
[Ruby](https://www.ruby-lang.org/en/) is a dynamically typed scripting language, 
similar to Python in features and usability (in [my](https://github.com/robu) humble opinion),
although the "look&feel" is quite different from Python. 
Its popularity, and to some extent decline, corresponds well to the popularity of its most 
well-known web framework, [Ruby on Rails](https://rubyonrails.org/).

In Ruby, pretty much everything is an object, which lends some elegance in contrast to Python's butt-ugly object facilities. As you can hear, Ruby's "competition" with Python led to a second "script kiddie" subculture. The Ruby language originated in Japan, now doesn't that lend a little exotic allure?

You may already have Ruby installed on your computer, but otherwise you will need to [install it](https://www.ruby-lang.org/en/documentation/installation/) if you want to run it locally.

## How to build and run

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

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

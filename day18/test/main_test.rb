require 'test/unit'

require_relative '../main.rb'

class MainTest < Test::Unit::TestCase

    def test_part1
        assert(get_solution_part1 == 1337)
    end

    def test_part2
        assert(get_solution_part2 == 42)
    end
end

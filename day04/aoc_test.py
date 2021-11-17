import unittest
import aoc

class TestAoc(unittest.TestCase):

    def test_get_solution_1_should_return_first_entry(self):
        self.assertEqual(aoc.getSolutionPart1(["1337","42"]),"1337")

    def test_get_solution_2_should_return_second_entry(self):
        self.assertEqual(aoc.getSolutionPart2(["1337","42"]),"42")

if __name__ == '__main__':
    unittest.main()

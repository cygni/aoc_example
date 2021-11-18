import unittest

import aoc


class TestAoc(unittest.TestCase):

    def test_get_solution_1_should_return_sum_of_input_entries(self):
        self.assertEqual(aoc.getSolutionPart1([1337, 42]), 1379)

    def test_get_solution_2_should_return_product_of_input_entries(self):
        self.assertEqual(aoc.getSolutionPart2([1337, 42]), 56154)


if __name__ == '__main__':
    unittest.main()

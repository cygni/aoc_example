from functools import reduce
from operator import mul
from os import environ


def getSolutionPart1(input_list):
    return sum(input_list)


def getSolutionPart2(input_list):
    return reduce(mul, input_list)


with open('input.txt') as f:
    file_input = [int(x) for x in f.readlines()]

print('Python')
part = environ.get('part')

if part == 'part2':
    print(getSolutionPart2(file_input))
else:
    print(getSolutionPart1(file_input))

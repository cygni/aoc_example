import os

with open('input.txt') as f:
    aoc_input = f.readlines()

def getSolutionPart1():
    return aoc_input[0]

def getSolutionPart2():
    return aoc_input[1]

part = os.environ.get('part')

if part == 'part2':
    print(getSolutionPart2())
else:
    print(getSolutionPart1())

import os

def getSolutionPart1(input_list):
    return input_list[0]

def getSolutionPart2(input_list):
    return input_list[1]

with open('input.txt') as f:
    file_input = f.readlines()

part = os.environ.get('part')

if part == 'part2':
    print(getSolutionPart2(file_input))
else:
    print(getSolutionPart1(file_input))

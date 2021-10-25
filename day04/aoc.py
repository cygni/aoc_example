import os

def getSolutionPart1():
    return 1337

def getSolutionPart2():
    return 42

part = os.environ.get('part')

if part == 'part1':
    print(getSolutionPart1())
else:
    print(getSolutionPart2())
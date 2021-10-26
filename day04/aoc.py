import os

def getSolutionPart1():
    return 1337

def getSolutionPart2():
    return 42

part = os.environ.get('part')

if part == 'part2':
    print(getSolutionPart2())
else:
    print(getSolutionPart1())
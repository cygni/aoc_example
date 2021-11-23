Object subclass: AocExample [
    inputData [
        |f a|
        f := FileStream open: 'input.txt' mode: FileStream read.
        a := f lines contents collect: [:x | x asNumber].
        f close.
        ^a
    ]
    part1 [
        ^self inputData inject: 0 into: [:x :y | x + y]
    ]
    part2 [
        ^self inputData inject: 1 into: [:x :y | x * y]
    ]
    run: part [
        ^part = 'part2'
            ifTrue: [^self part2]
            ifFalse: [^self part1]
    ]
]

aoc := AocExample new.
'Smalltalk' displayOn: stdout.
Character nl displayOn: stdout.
part := Smalltalk getenv: 'part'.
answer := aoc run: part.
answer printOn: stdout.
Transcript cr.

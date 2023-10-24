#!/bin/bash

sum() {
    res=0
    while IFS= read -r num || [ -n "$num" ]; do
        ((res += num))
    done < "input.txt"
}

multiply() {
    res=1
    while IFS= read -r num || [ -n "$num" ]; do
        ((res *= num))
    done < "input.txt"
}

echo "Bash"
[ "$part" = "part2" ] && multiply || sum

printf "%s\n" "$res"


#!/bin/sh

sum(){
    res=0
    while IFS= read -r num || [ -n "$num" ]; do
        res=$((res + num))
    done < "input.txt"
}

multiply(){
    res=1
    while IFS= read -r num || [ -n "$num" ]; do
        res=$((res * num))
    done < "input.txt"
}

[ "$part" = "part1" ] && sum || multiply

printf "%s\n" "$res"

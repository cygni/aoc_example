#!/bin/sh

if [ "$part" == "part2" ]
then 
	tail -n 1 input.txt
else
	head -n 1 input.txt
fi

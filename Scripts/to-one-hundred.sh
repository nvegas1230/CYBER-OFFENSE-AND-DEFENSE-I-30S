#!/bin/bash

number=$((($RANDOM%100)+1))
guessed=false

while !$guessed; do
	read -p "Guess a number between 1 and 100: " guess
	if [[ $guess -eq $number ]]; then
		echo "You guessed the number! It was $number."
	fi
done
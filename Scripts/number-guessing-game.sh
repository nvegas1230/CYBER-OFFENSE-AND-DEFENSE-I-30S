#!/bin/bash

settingsFile=.settings


while true; do
	read -p "Guess a number between 1 and 100: " guess
	if [[ $guess -eq $number ]]; then
		echo "You guessed the number! It was $number"
		break
	elif [[ $guess -lt $number ]]; then
		echo "Your guess was too low"
	else
		echo "Your guess was too high"
	fi
done
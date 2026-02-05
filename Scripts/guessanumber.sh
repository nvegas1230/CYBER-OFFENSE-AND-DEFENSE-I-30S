#!/bin/bash

randomNumber=$((($RANDOM%10)+1))
read -p "Guess a number from 1-10: " guess

if [[ $randomNumber -eq $guess ]]; then
{
	echo "CORRECT!"
}
else
{
	echo "WRONG! You guessed: $guess, the number was: $randomNumber"
}
fi
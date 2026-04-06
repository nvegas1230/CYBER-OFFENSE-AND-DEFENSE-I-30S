#!/bin/bash

single_quote='This is a single quote string'
double_quote="This is a double quote string"

echo $single_quote
echo $double_quote

read -p 'Please type something to add to the variable: ' input

echo 'For single quotes: $input'
echo "For double quotes: $input"
echo 'Single quotes are for literal strings, double quotes are for variable expansion'

echo 'Because of overuse and unnecessary use of double quotes, people can break and abuse systems using command injection'
echo 'Read command seems to return it in single quotes so it is realatively safe this way (from my understanding)'
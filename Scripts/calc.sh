#!/bin/bash

num_one=""
num_two=""
operator='$name'

menu_options() {
	echo -e "
	|Choose an option from below|
	-----------------------------
	|
	| A) Choose or change first number
	|
	| B) Choose or change the second number
	|
	| C) Select an operator
	|
	| D) Calculate with given numbers and operator
	|
	| X) Exit calculator
	|
	-----------------------------
	"
}

set_first_number() {
	read -p "Enter the first number: " input
	num_one=$input
}

set_second_number() {
	read -p "Enter the second number: " input
	num_two=$input
}

set_operator() {
	read -p "Please enter one of the following operators (+,-,*,/): " input
	case $input in
		'+') operator='+';;
		'-') operator='-';;
		'*') operator='*';;
		'/') operator='/';;
		*) echo "You did not select a valid operator; skipping operator selection.";;
	esac
}
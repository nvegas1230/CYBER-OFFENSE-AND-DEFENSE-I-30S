#!/bin/bash

# USING BUBBLE SORT
declare -a numberList
mainLoop=true

read -p "Input 10 numbers (seperated by spaces): " numbers
for number in $numbers; do
	numberList+=($number)
done

listLength=${#numberList[@]}

while $mainLoop; do
	declare -i passCount
	passCount=0

	for index in ${!numberList[@]}; do
		num1=${numberList[index]}
		num2=${numberList[index+1]}

		if [[ $((index+1)) -eq $listLength ]]; then
			passCount=$((passCount+1))
			continue
		fi

		bool=false
		if [[ $num1 -gt $num2 ]]; then
			bool=true
		fi

		if $bool; then
			numberList[index]=${num2}
			numberList[index+1]=${num1}
		else
			passCount=$((passCount+1))
		fi

		# To see the sort in action
		#echo "$passCount, ${numberList[@]}"
	done

	if [[ $passCount -eq $listLength ]]; then
		mainLoop=false
	fi
done

echo "Sorted list: ${numberList[@]}"

#!/bin/bash
declare -i choice
echo "-----	Celsius and Fahrenheit Converter	-----"
echo "	1. Celsius to Fahrenheit"
echo "	2. Fahrenheit to Celsius"
read -p "Select choice (1/2): " choice
if [ $choice -eq 1 ]; then
	read -p "Enter Degrees in Celsius: " c
	f=$(echo "scale=2; ($c*9/5)+32" | bc)
	echo "-----		$f °F		-----"
elif [ $choice -eq 2 ]; then
	read -p "Enter degeres in Fahrenheit: " f
	c=$(echo "scale=2; ($f-32)*5/9" | bc)
	echo "-----		$c °C		-----"
fi

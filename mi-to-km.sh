#!/bin/bash
declare -i choice
echo "-----	Miles and Kilometer Converter	-----"
echo "  1. Miles to Kilometer"
echo "  2. Kilometer to Miles"
read -p "Select choice (1/2): " choice
if [ $choice -eq 1 ]; then
        read -p "Enter number of miles: " mi 
	km=$(echo "scale=2; ($mi * 1.609344)" | bc)
        echo "-----		$km km           -----"
elif [ $choice -eq 2 ]; then
        read -p "Enter number of kilometers: " km 
	mi=$(echo "scale=2; ($km * 0.6213711922)" | bc)
        echo "-----             $mi miles           -----"
fi


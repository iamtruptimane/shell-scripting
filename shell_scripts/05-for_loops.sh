#!/bin/bash

#print each colour

colours="red green blue yellow"

for colour in $colours; do
    echo "colour: $colour"
done

#simple for loop to iterate over number
echo "Counting from 1 to 5: "
for i in {1..5}; do
    echo $i
done

#simple for loop iterate over files in a directory
echo "Files in the current directory: "
for file in *
do 
    echo $file
done

#simple for loop to iterate over command output
echo "Printing the first five multiples of 3:"
for i in $(seq 1 5)
do
    result=$((3 * i))
    echo $result
done

#simple for loop to iterate over array elements
fruits=("Apple" "Banana" "Orange" "Grapes")

echo "List of fruits"
for fruit in "${fruits[@]}"
do
    echo $fruit
done  

#simple for loop for using C-style syntax

echo "COunting down from 5 to 1: "
for((i=5; i>=1; i--))
do
    echo $i
done



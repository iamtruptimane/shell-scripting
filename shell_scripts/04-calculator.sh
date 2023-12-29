#!/bin/bash

echo "Enter the first number: "
read num1

echo "Enter a second number: "
read num2

echo "Choose any operations (+, -, *, /): "
read operations

if [ "$operations" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operations" == "-" ]; then
    result=$((num1 - num2))
elif [ "$operations" == "*" ]; then
    result=$((num1 * num2))
elif [ "$operations" == "/" ]; then
    result=$((num1 /  num2))
else
    echo "Invalid Opeartion"
    exit 1
fi

echo "result: $result"


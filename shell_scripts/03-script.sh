#!/bin/bash

#chek if number is + or -

echo "Enter Nummber: "
read number

if [ $number -gt 0 ]; then
    echo "Nummber is Positive"
elif [ $number -lt 0 ]; then
    echo "Number is Negative"
else
    echo "Number is Zero"
fi

# check if person is eligible or not for voting

echo "Enter your age: "
read age

if [ $age -gt 18 ]; then
    echo "You are eligible to vote"
elif [ $age -eq 18 ]; then
    echo "You are eligible to vote"
else
    echo "You are not eligible to vote"
fi

#check if file is exist or not
echo "Enter a Filename: "
read filename

if [  -e $filename ]; then
    echo "The file $filename is exist"
else
    echo "The $filename is does not exist"
fi

#chek if the current user has write permissions
if [ -w $HOME ]; then
    echo "You have write permisssion in your home directory"
else
    echo "YOu don't have write permission in your home directory"
fi





#!/bin/bash

#This is the script where i have use variables
MY_SHELL="bash"
echo "This is my ${MY_SHELL} script"

DATE=$(date +%Y-%m-%d)
echo "Today's date is ${DATE}" 

SERVER_NAME=$(hostname)
echo "My server name is ${SERVER_NAME}"

MY_NAME="Trupti"
echo "My name is ${MY_NAME}"
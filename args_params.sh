#!/bin/sh

# $0 is scipt or program name, $1-$9... is following arguents
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

# exit status variable, 0 is successful, 1 is unsuccessful
echo $?
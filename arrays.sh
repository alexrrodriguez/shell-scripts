#!/bin/sh

# creating array and setting value to index:
#   array_name[index]=value

# accessing array values:
#   ${array_name[index]}

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Manny"
NAME[3]="Ryan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

# access all the items in an array:
#   ${array_name[*]} or ${array_name[@]}

echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"
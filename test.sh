#!/bin/sh

# creating variables
NAME="Michael Jordan"
echo $NAME

# unsetting variables
PLAYER="Larry Bird"
unset PLAYER
# will print nothing to the line
echo $PLAYER

# creating variable from input
echo "what is your name?"
read PERSON
echo "Hello, $PERSON"


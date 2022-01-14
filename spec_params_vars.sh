#!/bin/sh

# special variables

# filename of current script
echo $0

# print out the PID of the current shell
echo $$

# loop through arguments with $*
for TOKEN in $*
do
  echo $TOKEN
done
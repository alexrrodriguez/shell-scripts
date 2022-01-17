#!/bin/sh

# Execute command on each file if a condition is met

# This scrips loops through all files in the current directory and checks if the filename starts with a letter.  If the condition is met, it executes and echo command in this example:

for file in *; do
  if [[ $file =~ ^[a-zA-Z] ]]; then
    # execute command on the file
    echo $file
  fi
done
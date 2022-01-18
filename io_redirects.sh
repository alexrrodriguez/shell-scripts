#!/bin/sh

# Output Redirection

# ouput redirection with > will write or overwrite standard output to designated file
who > users_test

# if file already contains data, that data will be lost
echo line 1 > users_test
cat users_test

# using >> operator will append the ouput to an existing file
echo line 2 >> users_test
cat users_test

# Input Redirection

# the < character can be used to redirect the input of a command
# this example will count the number of lines in the file users_test
wc -l users_test

# you can return a value from the standard input of another file using the < character
wc -l < users_test

# notice the first method returns the value and filename where as the second only returns the value

# Here Document

# general form for a Here Document is: 
# command << delimiter
# document
# delimiter

# the delimiter tells the shell that the here document has completed, must be single word with no spaces or tabs
wc -l << EOF
  This is a simple lookup program
    for good (and bad) restaurants
    in Chicago, IL.
EOF

cat << EOF
This is a simple lookup program
for good (and bad) restaurants
in Chicago, IL.
EOF

# the following script runs a session with the vi text editor and saves the input in the file test.txt
filename=test.txt
vi $filename <<EndOfCommands
i
This file was created automatically from a shell script
^[
ZZ
EndOfCommands

# Discard the standard output

# command > /dev/null
# the file /dev/null is special file that automatically discards all its inputs

# to discard both the output of a command and its error output, redirect stderr and stdout
# command > /dev/null 2>&1

# here 2 represents stderr and 1 represents stdout, you can display message of stderr and stdout as follows:
# echo message 1>&2
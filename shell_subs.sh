#!/bin/sh

# \n is substituted with a new line
a=10
echo "Value of a is $a \n" 

# `command` substitution is performed when a command is given and used to assign the ouput of command to a variable
DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

# variable substitution
echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

# if var is null or unset, word is substituted for var
echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

# unset variable
unset var
echo ${var:+"This is defualt value"}
echo "3 - Value of var is $var"

# if var is set, word is substituted for var
var="Prefix"
echo ${var:+"This is defualt value"}
echo "4 - Value of var is $var"

# if var is null or unset, message is printed to standard error
unset var
echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
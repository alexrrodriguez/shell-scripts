#!/bin/sh

# shell performs arithmetic operations using awk or expr
val=`expr 2 + 2`
echo "Total value: $val"

a=10
b=20

ADD=`expr $a + $b`
echo "Addition value: $ADD"

SUBTRACT=`expr $a - $b`
echo "Subtraction value: $SUBTRACT"

MULTIPLY=`expr $a \* $b`
echo "Multiplication value: $MULTIPLY"

DIVISION=`expr $b / $a`
echo "Division value: $DIVISION"

# Assign variable to other variable
a=$b
echo "Assignment value: $a"

# Equality value returns boolean
if [ $a == $b ]
then
  echo "variables are equal"
fi

b=30
if [ $a != $b ]
then
  echo "variables are not equal"
fi

# if else and statement
VAR1="Linux"
VAR2="Linux"

if [ "$VAR1" == "$VAR2" ]
then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

# if elif else statement
if [ "$VAR1" != "$VAR2" ]
then
  echo "Strings are not equal"
elif [ "$VAR1" == "$VAR2" ]
then
  echo "Strings are equal"
else
  echo "Not a string value"
fi

# adding user input
read -p "Enter first string: " STRING1
read -p "Enter second string: " STRING2

if [[ "$STRING1" == "$STRING2" ]]
then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

# can also use logical and && and or || to compare strings
[[ "word1" == "word2" ]] && echo "Equal" || echo "Not equal"

# check if string contains a substring
VAR="GNU/Linux is an operating system"
if [[ $VAR == *"Linux"* ]]
then
  echo "It's there."
fi

# another option is to use regex operator =~, .* matches zero or more occurrences of any character except newline character
VAR="GNU/Linux is an operating system"
if [[ $VAR =~ .*Linux.* ]]
then
  echo "It's there."
fi

# check if a string is empty or not
VAR=""
if [[ -z $VAR ]]
then
  echo "String is empty"
fi

VAR="Linux"
if [[ -n $VAR ]]
then
  echo "String is not empty"
fi


# Relational Operators for numeric values
echo "Choose first number: "
read A
echo "Choose second number: "
read B

if [[ $A -eq $B ]]
then
  echo "Values are equal"
elif [[ $A -ne $B ]]
then
  echo "Values are not equal"
elif [[ $A -gt $B ]]
then
  echo "First number is greater than second number"
elif [[ $A -lt $B ]]
then
  echo "First number is less than second number"
elif [[ $A -ge $B ]]
then
  echo "First number is greater than or equal to second number"
elif [[ $A -le $B ]]
then
  echo "First number is less than or equal to second number"
fi


# Boolean operators

A=10
B=20

# logical or
if [ $A -lt 20 -o $B -gt 100 ]
then
  echo "at least one condition is true"
fi


# logical and
B=120
if [ $A -lt 20 -a $B -gt 100 ]
then
  echo "both conditions are true"
fi


# String operators

# equal or not
A="abc"
B="efg"
if [ $A = $B ]
then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

A="abc"
B="efg"
if [ $A != $B ]
then
  echo "Strings are not equal"
else
  echo "Strings are equal"
fi

# check if string size is zero or non zero
A=""
if [ -z $A ]
then
  echo "String size is 0 character"
else
  echo "String is greater than 0 characters"
fi

A="string"
if [ -n $A ]
then
  echo "String is greater than 0 characters"
else
  echo "String size is 0 character"
fi

if [ $A ]
then
  echo "String is not empty"
fi


# use file operators to test various properties associated with Unix file
# ex.  -r filename (check if file is readable, if yes, condition becomes true)

#!/bin/sh

# using until keyword
A=1

until [ $A -ge 10 ]
do
  printf $A
  A=`expr $A + 1`
done

# nested while loop
A=0

while [ "$A" -lt 10 ]
do
  B="$A"
  while [ "$B" -ge 0 ]
  do
    # use printf instead of echo to avoid newline character
    printf "$B "
    B=`expr $B - 1`
  done
  echo
  A=`expr $A + 1`
done

# using break statement
A=0

while [ $A -lt 10 ]
do
  echo $A
  if [ $A -eq 5 ]
  then
    break
  fi
  A=`expr $A + 1`
done

# for loop
for VAR1 in 1 2 3
do
  echo $VAR1
done

# nested for loop
for VAR1 in 1 2 3
do
  for VAR2 in 4 5 6 7
  do
    echo $VAR1
    echo $VAR2
  done
done


# nested for loop with break statement
for VAR1 in 1 2 3
do
  for VAR2 in 0 5
  do
    if [ $VAR1 -eq 2 -a $VAR2 -eq 0 ]
    then 
      break 2
    else
      echo "$VAR1 $VAR2"
    fi
  done
done

# using the continue statement

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
  Q=`expr $NUM % 2`
  if [ $Q -eq 0 ]
  then
    echo "Number is an even number!"
    continue
  fi
  echo "Number is an odd number!"
done
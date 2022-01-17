#!/bin/sh

# Print the elapsed time of the code execution

START_TIME=$(date +%s)

# code being executed starts here

A=0

while [ "$A" -lt 50 ]
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

# code being executed ends here

END_TIME=$(date +%s)

echo "Time elapsed: $(($END_TIME - $START_TIME)) seconds"
#!/bin/sh

# A regular expression is a string that can be used to describe several sequences of characters
# Regular epressions are used by several different unix commands, including ed, sed, awk, grep

# invoke sed(StreamingEDitor) by piping output text from text_test file
cat ~/Documents/Development/shell-scripts/text_test | sed

# sed general syntax: /pattern/action


# deleting all line with sed

# cat ~/Documents/Development/shell-scripts/text_test | sed 'd'

# sed address to target location in file or range for command to be applied

# delete the first line and print rest of file
cat ~/Documents/Development/shell-scripts/text_test | sed '1d' |more

# specify a range for command, this range will delete from rows 3 to 5
cat ~/Documents/Development/shell-scripts/text_test | sed '3, 5d' |more


# lines 1 to 3 are printed using p command with -n to avoid repetition
cat ~/Documents/Development/shell-scripts/text_test | sed -n '1, 3p'

# the substitution command, denoted by s, will substitute any string that you specify with any other string that you specify
# specify both strings by bookending the strings with /
cat ~/Documents/Development/shell-scripts/text_test | sed 's/Lorem/Hello/'

# the above example will substitute the first occurrence, in order to perform a global substitution, add letter g to end of command
cat ~/Documents/Development/shell-scripts/text_test | sed 's/Lorem/Hello/g'


# using alternative string separator
# in this example we change the delimiter to a : so that we can substitue /root with /example
cat ~/Documents/Development/shell-scripts/text_test | sed 's:/root:/example:g'

# use empty substitution string to remove string from file entirely
cat ~/Documents/Development/shell-scripts/text_test | sed 's/Lorem//g'

# address substitution
# to substitute the string 'non' with the string 'hello' only on line 4, use following syntax
cat ~/Documents/Development/shell-scripts/text_test | sed '4s/non/hello/g'


# matching command
# use the p option with the -n option to print all lines with matching string
cat ~/Documents/Development/shell-scripts/text_test | sed -n '/Sed/p'

# while matching patterns, you can use the regular expression which provides more flexibility

# ^ matches beginning of lines
# $ matches the end of lines
# . matches any single character
# * matches zero or more occurrences of the previous character
# [chars] matches any one of the character given in chars, chars is a squence of character and can be used to indicate a range of characters

# this example will delete all lines starting wtih string Sed
cat ~/Documents/Development/shell-scripts/text_test | sed '/^Sed/d'


# Character class keywords are commonly available regular expressions, such as [[:alpha:]], which is the same as [a-z A-Z], or all aphabetic letters
# Some other examples of character class keywords:
# [[:alnum:]] = alphanumeric [a-z A-Z 0-9]
# [[:digit:]] = numbers [0-9]
# [[:space:]] = whitespace
# [[:lower:]] = lowercase letters [a-z]


# Aampersand Refrencing
# sed metacharacter & represents contents of the pattern that was matched
# refrencing the file phone.txt, we can add parentheses for easier reading by using the ampersand replacement character
sed -e 's/^[[:digit:]][[:digit:]][[:digit:]]/(&)/g' phone.txt

# using multiple sed commands
# you can use multiple sed commands in a single sed command as follows
# sed -e 'command1' -e 'command2' ... -e 'commandN' files
# using this mechanism, we can write the phone numbers from phone.txt with parantheses and hyphens
sed -e 's/^[[:digit:]]\{3\}/(&)/g' -e 's/)[[:digit:]]\{3\}/&-/g' phone.txt

# in the above example, instead of repeating character class [[:digit:]] three times, we replace other characters with \{3\}, so regex is matched 3 times.

# add the stdoutput to the file update_phone.txt
sed -e 's/^[[:digit:]]\{3\}/(&)/g' -e 's/)[[:digit:]]\{3\}/&-/g' phone.txt >> update_phone.txt


# Back references
# use back references to define specific regions in regular expressions, these special regions can be used as reference in your replacement strings
# to define a region, insert backslashed parentheses around region of interest.
# referencing update_phone.txt
cat phone.txt | sed 's/\(.*)\)\(.*-\)\(.*$\)/Area code: \1 Second: \2 Third: \3/'






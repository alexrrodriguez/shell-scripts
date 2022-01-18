#!/bin/sh

# list of shell special characters:
# * ? [ ] ' " \ $ ; & ( ) | ^ < > new-line space tab
# a character may be quoted(stand by itself) by preceding it wtih a \

# upon execution, will recieve error
echo Hello; World

# using quoted character
echo Hello\; World

# since $ is a metacharacter, it must be quoted to avoid special handling
echo "I have \$1200"

# single quotes will quote the whole line incase of many special shell characters
echo '<-$1500.***>; (update?) [y|n]'

# with single quotes will print without special characters
VAR=Zara
echo '$VAR owes <-$1500.**>; [ as of (`date +%m/%d`)]'

# with double quotes will print with special characters
VAR=Zara
echo "$VAR owes <-\$1500.**>; [ as of (`date +%m/%d`)]"

# putting any shell command in backticks executes the command
DATE=`date`
echo "Current date: $DATE"


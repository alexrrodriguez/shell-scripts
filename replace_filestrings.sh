#!/bin/sh

# search and replace strings in files

# this script will search files for strings equal to localhost:8000 and replace with localhost:8080

find . -type f -exec grep -l "localhost:8000" {} \; | xargs sed -i 'x/localhost:8000/localhost:8080/g' 
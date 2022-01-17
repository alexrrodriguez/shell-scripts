#!/bin/sh

# Search for files recursively to find an expression

find . -type f -exec grep -l "" {} \;
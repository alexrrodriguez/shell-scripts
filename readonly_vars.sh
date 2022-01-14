#!/bin/sh

# this script will return:
# ./readonly_vars.sh: line 5: NAME: readonly variable

NAME="Michael Jordan"
readonly NAME
NAME="Larry Bird"

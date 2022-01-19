#!/bin/sh

# declaring functions
# function_name () {
#  list of commands
# }

# define function
Hello () {
  echo "Hello World"
}

# call function
Hello

# pass parameters
Hello () {
  echo "Hello World $1 $2"
}

# call function
Hello Zara Ali

# use return command to return and exit the function value
# pass parameters
Hello () {
  echo "Hello World $1 $2"
  return 10
}

# call function
Hello Zara Ali

# capture value returned by last command
ret=$?
echo "Return value is $ret"

# nested function
number_one () {
  echo "This is the first function speaking.."
  number_two
}

number_two () {
  echo "This is now the second function speaking.."
}

number_one

# can add definitions for functions inside your .profile so these definiitions will be available whenever you login
# you can then use these functions from the command prompt
# alternatively you can run all the functions in a file from the command line with . filename.sh
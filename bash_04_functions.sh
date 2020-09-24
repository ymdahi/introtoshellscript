#! /bin/bash

###
### Example 001: Basic Functions
###

x=1

# first we create a function with code to be 
# executed within the { }
function_name() {
  echo "This function has been run $x times"
  let x++
}

# then we call this function as often and where
# we need it:

function_name
function_name


###
### Example 002: Passing arguments
###

# we can pass arguments into a function as if it was
# a separate script
display_greeting() {
  echo "Hello $1"
}

# the function above will use the first argument 
# here we set the value of the 1st arg to World
display_greeting World


###
### Example 003: Return values
###

# we can return a value in a function
# to be used in the original call location
add_twoNumbers() {
  let x=$1+$2
  return $x
}

add_twoNumbers 2 7
echo "the calculated total is: $?"






#! /bin/bash

###
### Example 001: Basic if statement
###

# check if the file ./output/ex001/newfile.txt exists
if [ -f ./output/ex001/newfile.txt ]
then
  echo "newfile.txt exists"
fi


###
### Example 002: Nesting if statements
###

# check if file exists and then check if it's writable
# make note of the intending
if [ -f ./output/ex001/newfile.txt ]
then
  echo "newfile.txt exists"
  if [ -w ./output/ex001/newfile.txt ]
  then
    echo "can write to newfile.txt"
  fi
fi


###
### Example 003: If / Else statements
###

# check if file exists
# if it doesn't exist then create it

if [ -f ./output/ex003/newfile.txt ]
then
  echo "newfile.txt exists"
else
  echo "newfile.txt does not exist, creating it now at /output/ex003/"
  mkdir -p ./output/ex003 && touch ./output/ex003/newfile.txt
fi


###
### Example 004: Boolean conditionals
###

# we can use multiple conditionals in our if statements, for example:

# if file doesn't exist and the first argument is = to "false"
# run this shell script and pass in false as the first argument
if [ ! -f ./output/ex004/newfile.txt ] && [ $1 == 'false' ]
then 
  echo "Example 004: file exists and first argument = false"
fi


###
### Example 005: Case statements
###

# when we have a lot of if/else statements, its cleaner
# to use a case statement

# handles when $1 (the first argument) is equal to run-all, run-step1, etc.
case $1 in
  run-all)
    echo "running all the commands"
    ;;
  run-step1)
    echo "running step 1 only"
    ;;
  run-step2)
    echo "running step 2 only"
    ;;
  run-step3)
    echo "running step 3 only"
    ;;
esac


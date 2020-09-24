#! /bin/bash

###
### Example 001: Creating Variables
###

StringVar="This is a string"
PathVar=output/ex001

# Use the variables from above to
# 1) create a directory tree
# 2) create a file in that directory
# 3) and append text to the new file
mkdir -p $PathVar
touch $PathVar/newfile.txt
echo $StringVar >> $PathVar/newfile.txt


###
### Example 002: Using Command Arguments
###

# Call this shell script and provide two arguments like this:
# ./bash_basics.sh output/ex002 "My string text"

# Take the supplied arguments and
# 1) 1st argument: create the new directory tree
# 2) 2nd argument: write this to a new txt file

mkdir -p $1
echo $2 >> $1/$(date +%m-%d-%Y).txt


###
### Example 003: Exporting variables
###

# In this example we will pass one of the variables in this shell script
# into another shell script.

ExportVar1=Hello
ExportVar2=World

export ExportVar1 ExportVar2
./export_variables_example.sh







#! /bin/bash

###
### Example 001: While loop
###
# continuing executing code while the statement is true

# for each line in the text file: input/ex001.txt 
# create a new file in output/ex004

cat ./input/ex001.txt | tr -d '\r' | while read line 
do
  
  if [ ! -f ./output/ex004 ]
  then
    mkdir -p ./output/ex004
  fi


  touch "./output/ex004/$line.txt"
  
done


###
### Example 002: For Loop
###
# for each item in a list, execute code

# for each file found in the folder
# append the text "Hello"
for file in ./output/ex004/*
do
  echo 'Hello' > $file
done

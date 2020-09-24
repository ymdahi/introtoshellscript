#! /bin/bash

# This script brings in exported variables from
# bash_basics.sh and echos it

echo $ExportVar1 $ExportVar2

# We can also modify change the values for these
# imported variables

ExportVar2=Universe

echo $ExportVar1 $ExportVar2
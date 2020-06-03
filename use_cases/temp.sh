#!/bin/bash

set -e

# Obtain the list of temporary project data sets 
dslist=$(zowe zos-files list dataset "TT6PBE1.TEST.SOURCE*")

# Delete each data set in the list
IFS=$'\n'
for ds in $dslist
do
     echo "Deleting Temporary Project Dataset: $ds"
     zowe files delete ds "$ds" -f
done
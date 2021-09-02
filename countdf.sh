#!/bin/bash

#Name: Ng Wing Yee      Student Number: 10556470

FILE=0 EMPTYFILE=0 DIR=0 EMPTYDIR=0 # declare variable for use in script

# to search all items in current dir
for file in $1/*; do   
    if [ -f $file ]; then # check if current item in the specified directory contains data
        fsize=$(du -kb $file | cut -f1) # get kb size of file and eliminate file path and name
        if [[ $fsize -eq 0 ]]; then 
            ((EMPTYFILE++)) # increment file contains no data count by 1
        else 
            ((FILE++)) # increment file contains data count by 1
        fi
    fi
done

for dir in $1/*; do
     if [ -d $dir ]; then #check if current directory contains child directories
         dsize=$(du -kb $dir | cut -f1) # get kb size of directory and eliminate its path and name
          if [[ $dsize -eq 0 ]]; then
            ((EMPTYDIR++)) # increment directory contains no file count by 1
          else 
            ((DIR++)) # increment directory contains file count by 1
        fi
    fi
done

echo "The $1 directory contains:"
echo "$FILE files contains data"
echo "$EMPTYFILE files that are empty"
echo "$DIR non-empty directories"
echo "$EMPTYDIR empty directories"

exit 0
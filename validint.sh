#!/bin/bash

#Name: Ng Wing Yee     Student Number: 10556470

#prompt user to input integer either 20 or 40
read -p 'Enter a two digit numeric code that is either [20] or [40]: ' var

#set anchor characters,if exactly '20' is inputed
if [[  $var =~ ^20$ ]]; then 
   echo "Valid input"

#set anchor characters, if exactly '40' is inputed
elif [[ $var =~ ^40$ ]]; then 
   echo "Valid input"

#if anything else is inputed
else
   echo "Invalid input. Try again."
   exit 1
fi

exit 0
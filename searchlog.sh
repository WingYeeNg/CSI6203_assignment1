#!/bin/bash

#Name: Ng Wing Yee      Student Number: 10556470
scount=0

while true; do # declare while loop only end with a specific command
 # account for first search or subsequent search
 if [[ $scount -eq 0 ]]; then 
    read -p "Enter [1] to search or [2] to exit: "
  else
    read -p "Enter [1] to search again or [2] to exit: "
  fi
 
    if [[ $REPLY -eq 2 ]]; then 
       break  # if user selects 2, break out of the while loop
     else

((scount++))

     # to prompt user to input a search term   
      read -p "Enter a search term: " sterm

      # then prompt user selecting 1 out of 3 types of searching 
      echo -e "1) Search for a whole word match\n2) Search for any match\n3) Search for an inverted match"
      read -p "Select a search type [1, 2 or 3]: " selopt



           # searching for whole word match
           if [[ $selopt =~ 1 ]]; then               
			         (cat access_log.txt | egrep -i -w $sterm) > result.txt 

           # for any match
           elif [[ $selopt =~ 2 ]]; then
               (cat access_log.txt | egrep -i $sterm) > result.txt

           # for inverted match
           elif [[ $selopt =~ 3 ]]; then
               (cat access_log.txt | egrep -i -v $sterm) > result.txt
           # for any invalid inputs
           else
               echo "Invalid input" | exit 1 
           fi

    clear  
    echo "Result:"
    result=$( cat result.txt | wc -l )
    echo $result "matches found"
    echo ""

 fi
done

exit 0
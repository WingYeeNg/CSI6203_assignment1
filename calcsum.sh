#!/bin/bash

#Name: Ng Wing Yee      Student Number: 10556470

let sum=$1+$2+$3 #set formula calculating sum of 3 integers

if [ $sum -le 30 ]; then #set maximim sum allowale: 30
    echo "The sum of $1 and $2 and $3 is $sum" #if the sum below 30
else
    echo "Sum exceeds maximum allowable" #if the sum exceeds 30
    exit 1
fi

exit 0
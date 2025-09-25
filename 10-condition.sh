#!/bin/bash 

NUMBER=$1

if [$1 -lt 10]; then 
   echo " Given number $NUMBER is less than 10 "
elif [$1 -eq 10]; then 
   echo " Given number $NUMBER is equal to 10 "
else 
   echo " Given number $NUMBER is greater than 10"
fi 


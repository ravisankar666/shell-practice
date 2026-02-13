#!/bin/bash

echo "Enter a number "
read a 
#check 

if [ $a == 0 ]; then 
    echo " It is a zero number you typed"
 elif [ `expr $a % 2` == 0 ]];
 then 
    echo " it is a even number you typed"
   else 
     echo " it's a odd number you typed"
     fi
     
         
#!/bin/bash 

# if [ 100 -gt 99] ; then 
#    echo " yes that's true "
#    else
#     echo " no that's false "
#     fi

read -p "Enter a number #100 : " number
#check 
if test $number == 100
then 
echo " Good , you have entered number 100 "
fi 

if test $number != 100
then 
echo " why did you enter another number"
fi


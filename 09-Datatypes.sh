#!/bin/bash 

# everything in shell consider as string

number1=100
number2=200
number3=devops

sum=$(($number1+$number2+$number3))  # shell has understand number3 variable and consider as string == zero.

echo " sum is : $ sum "
# size=3 MAX_index=2

#          0      1         2            position alway start with zero
LEADERA=("modi" "putin" " trump") 

echo " all leaders : ${LEADERS[@]}". # @ mean all , print everything .

echo " all leaders : ${LEADERS[0]}"

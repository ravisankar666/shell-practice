#!/bin/bash

read -p "Enter your age : " age

if [  $age -le 13 ]; then
echo "you are a child"
elif [ $age -ge 13 ] && [ $age -le 18 ]; then
echo "you are a teenager"
elif [ $age -gt 18 ] && [ $age -le 40 ]; then
echo " you are an adult"
elif [ $age -gt 40 ] && [ $age -le 80 ]; then 
echo "you are an old man "
fi


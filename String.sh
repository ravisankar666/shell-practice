#!/bin/bash

read -p "Enter your name : " name

if test "$name" = "john"
then 
echo "you are not selected for this job!"
elif [ "$name" != "john" ] && [ ! -z $name ]; then
echo "Sorry you are not selected for this job!"
elif [ -z $name ]; then
echo "please enter your name, can't accept an empty name "
fi


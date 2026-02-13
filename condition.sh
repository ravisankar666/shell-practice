#!/bin/bash

echo " Please enter your correct age"
read AGE

if [ "$AGE" -lt 20 ] || [ "$AGE" -gt 50 ]; then 
  echo "  sorry you are out of the age"
  elif [ "$AGE" -gt 20 ] && [ "$AGE" -lt 30 ]; then
  echo " you are in the age of 20's "
  elif [ "$AGE" -gt 30 ] && [ "$AGE" -lt 40 ]; then
  echo " you are iin the age of 30's "
  elif [ "$AGE" -gt 40 ] && [ "$AGE" -lt 50 ]; then 
  echo  " you are in age of 40's "
  fi
  
  

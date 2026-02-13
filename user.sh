#!/bin/bash

passd=/etc/passwd

# get user name

read -p "Enter a user name : " user

# trying to search or locate username in /etc/passwd

cat "$passd" | grep -iw "$user " > /dev/null

status=$?

if [ test $status -eq 0 ]; then 
    echo " user $user found on the system"
  else 
    echo " user $user not found on the system"
  fi
     


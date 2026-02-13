#!/bin/bash

echo "Enter the password"

read -s passd

if [ "$passd" == "redhat" ]; then 
    echo -e "\e[31m password verified \e[0m"
    else
    echo -e "\e[32m password is wrong \e[0m"    
    fi


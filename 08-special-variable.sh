#!/bin/bash

echo " all variable passed to the script : $@"
echo " all variable passed to the script : $*"
echo " script name : $0"
echo " current directory : $PWD"
echo "Who is running this: $USER"
echo " Home directory of the user: $HOME "
echo " pid of the script : $$"
#print process id 
sleep 10 &   # basck ground running this process
echo "PID of the last command in the background: $!"

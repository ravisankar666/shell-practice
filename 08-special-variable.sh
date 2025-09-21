#!/bin/bash

echo " all variable passed to the script : $@"
echo " all variable passed to the script : $*"
echo " script name : $0"
echo " current directory : $pwd"
echo " who is running this : $user"
echo " Home directory of the user: $home "
echo " pid of the script : $$"
#print process id 
sleep 10 &   # basck ground running this process
echo "PID of the last command in the background: $!"

#!/bin/bash
[ $# -eq 0 ] && { echo "you have not passed any argument"; exit 1;} 

for i in $*
do
echo 
echo "< $i >"
[ -f $i ] && cat $i || echo " $i file not found"
echo "-----------------------------"
done


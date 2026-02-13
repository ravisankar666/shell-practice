#!/bin/bash

files="etc/passwd /etc/shadow /etc/group /etc/gshadow /etc/abcdcd"

for i in $files
do
   [ -f $i ] && echo "$i file found " || echo "Error $i file missing"
done

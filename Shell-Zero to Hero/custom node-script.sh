!#/bin/bash

#####################
#   author : ravi
#   date: 2025
#   this script output the node health
#   version: v1
#
########################
set -x  # debug mode on
echo " print the disk space"
df -h
echo " print the memory"
free -g
echo "print the cpu"
nproc
echo " print the uptime"
uptime

ps -ef | grep "amazon"

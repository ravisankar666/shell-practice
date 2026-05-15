#!/bin/bash

DISK_USAGE=$( df -h | grep -v Filesystem )
DISK_THRESHOLD=75
IPADDRESS=$(curl -s http://169.254.169.254/latest/metadat/local-IPV4)
MESSAGE= ""
while IFS= read -r line; 
    do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}' )
    if [ $USAGE -ge $DISK_THRESHOLD ]; then
        MESSAGE+= "high usage  on $PARTITION: $USAGE % \n" 
        fi 


    done <<< "$DISK_USAGE"

echo "Message body : $MESSAGE"





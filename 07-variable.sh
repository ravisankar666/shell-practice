#!/bin/bash

#Date=$(data)
#echo " Timestap executed : $Date"

START_TIME=$(date+%s)

sleep 10 

END_TIME=$(date+%s)
TOTAL_TIME=$(($END_TIME-$START_TIME)) 

echo " script executed in: $TOTAL_TIME seconds"
#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
   echo " Error :: please run the script with root privillage"
   exit 1 #failure other than zero
fi

dnf intsall mysql -y

if [ $? -ne 0 ]; then 
   echo " error :: installing mysql failure"
   exit 1
else 
    echo " installaing mysql success "
fi


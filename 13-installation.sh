#!/bin/bash

USERID=$(id -u )


if  [  $USERID  -ne  0 ]; then 
    echo “ Error :: please run this script with root privilege”
    exit 1 # failure is other then zero
fi

dnf install mysql-server -y

if  [  $?   -ne  0 ]; then 
   echo “ error :: installing mysql is faillure”
   exit 1
else 
   echo “ intsalling mysql is success”
fi

dnf install nginx -y

if  [  $?  -ne  0 ]; then 
   echo “ error :: installing nginx is faillure”
   exit 1
else 
   echo “ intsalling nginx is success”
fi

dnf intsall mongodb-mongosh -y

if  [ $?  -ne  0 ]; then 
   echo “ error :: installing mongodb is faillure”
   exit 1
else 
   echo “ intsalling mongodb is success”
fi



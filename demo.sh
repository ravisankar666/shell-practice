#!/bin/bash

# NUMBER=$1

# if [ $NUMBER -lt 10 ]; then
#     echo " Given number $NUMBER is less than 10"
# elif [ $NUMBER -eq 10 ]; then
#       echo " given number $NUMBER is equal to 10"   
# else
#     echo " given number $NUMBER is greater than or equal to 10"
# fi


# echo "Eenter the number : "

# read -p NUMBER

# if [ (($NUMBER % 2)) -eq 0]; then 
#      echo " given number $NUMBER is even "
# else
#     echo " given number $NUMBER is odd"
# fi         


# USER=$(id -u)

# if [ $USER -ne 0 ]; then 
#    echo " ERROR: please run this script with root privilege"
#    exit 1 # failure is other tham 0
# fi

# VALIDATE(){ #function receive inputs through args just like shell script args.

# if [ $1 -ne 0 ]; then 
#     echo " ERROR: installing $2 is failed"
#     exit 1
# else    
#     echo " installing $2 is successful"
# fi

# }

# dnf install mysql -y

# VALIDATE $? "mysql"


# dnf install nginx -y

# VALIDATE $? "nginx"

# dnf install mongodb-mongosh -y
# VALIDATE $? "mongodb-mongosh"

#==================================================

# USERID=$(id -u)
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"   
# Y="\e[33m"
# LOGS_FOLDER="/var/logs/shell-script"
# SCRIPT_NAME="$( echo $0 | cut -d "." -f1 )
# LOG_FILE="$LOGS_FOLDER/${SCRIPT_NAME}.log"

# mkdir -p $LOGS_FOLDER
# echo "Script started executing at : $(date)" | tee -a $LOG_FILE.   <tee command add print lines add to files>
# if [ $USERID -ne 0 ]; then
#     echo -e "ERROR: Please run this script with root privilege"
#     exit 1 
# fi

# VALIDATE(){ #function receive inputs through args just like shell script args.

# if [ $1 -ne 0 ]; then 
#     echo " ERROR: installing $2 is failed"
#     exit 1
# else    
#     echo " installing $2 is successful"
# fi

# }

# dnf install mysql -y &>>$LOG_FILE

# VALIDATE $? "mysql"

#==================================================







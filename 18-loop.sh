#!/bin/bash

#!/bin/bash

USERID=$( id -u )
R=“\e[31m”
G=“\e[32m”
Y=“\e[33m”
N=“\e[0m”

LOGS_FOLDER=“/var/log/shall-script”
SCRIPT_NAME=$( echo $0 | cut -d “.” -f1 “)
LOG_FILE=“$LOGS_FOLDER/$SCRIPT_NAME.log”  # /var/log/shell_script/16-loop.log


mkdir -p $LOGS_FOLDER
echo  “ script started executed at : $(data)” | tee -a $LOGS_FILE

If  [ $USERID -ne 0 ]; then 
   echo “Error :: please run this script with root privileges “
   exit 1
fi

VALIDATE(){ #function receive input through args just like a shell args
  If [ $1 -ne 0 ]; then 
     echo -e “installing $2 ….. $R FAILURE $N” | tee -a  $LOG_FILE
     exit 1
  else 
     echo -e “ installing $2 …. $G SUCCESS $N” | tee -a $LOG_FILE
  fi
}

for package in $@ 
do
   #check package is already installed or not 
   dnf list installed $package & >>LOG_FILE
   
   #if exit status is 0 , already installed . -ne 0 need to install it 
   If [ $? -ne 0 ]; then 
      dnf install $package -y & >>LOG_FILE
      VALIDATE $? “$package”
   else 
       echo -e “ $package already installed …….. $Y SKIPPING $N “

   fi 
done 






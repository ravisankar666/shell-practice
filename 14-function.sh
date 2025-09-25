#!/bin/bash 

USERID=$( id -u )
R=“\e[31m”
G=“\e[32m”
Y=“\e[33m”
N=“\e[0m”


if [ $USERID -ne 0 ]; then 
   echo " Error :: plz run the script root privillege "
   exit 1
fi

VALIDATE() { # function is receiver through args just like a shell_script args

if [ $1 -ne 0 ]; then 
   echo " Error :: installation $2 ....... $R is failure $N"
   exit 1
else 
   echo " error :: intsallation $2 ........ $G is success $N"
fi

}

dnf list installed mysql 
#intsall if it is not found
if [ $? -ne 0]; then 
   dnf install mysql -y 
   VALIDATE$? "mysql"
else 
   echo " mysql already exist ..... $G skpping $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then 
   dnf install nignx -y
else 
   echo " nginx already exist ....... $G skipping $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then 
  dnf install python3 -y
else  
   echo " python3 already ......... $G skipping $N "
fi


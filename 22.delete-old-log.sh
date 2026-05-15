#!/bin/bash


USERID=$( id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE
 
SOURCE_DIR=/home/ec2-user/app-logs

if [ ! -d $SOURCE_DIR ]; then
  echo -e "$R Error: Source directory $SOURCE_DIR does not exist $N"
  exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -name *.log -mtime +14))

while IFS= read -r filepath
do
    echo "deleting the file: $filepath"
    rm -f $filepath
    echo "deleted the file: $filepath"
done <<< $FILES_TO_DELETE    


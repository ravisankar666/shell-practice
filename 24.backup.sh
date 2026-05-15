#!/bin/bash

#!/bin/bash


USERID=$( id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
$SOURCE_DIR=$1
$DESTINATION_DIR=$2
DAYS=$(3:-14) #if not provided considered as 14 days

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo -e "$R Error: Please run this script with root privilege"
    exit 1 # failer is other zero
fi

USAGE(){
    echo -e "$R USAGE:: sudo sh 24.backup.sh <SOURCE_DIR> <DESTINATION_DIR> <DAYS>[optional, default 14 days]"
    exit 1
}
# check source dir and destination dir passed or not
if [ $#  -lt 2 ]; then
    USAGE
fi
# check source dir exist
if [ ! -d $SOURCE_DIR ]; then
    echo -e "$R source :: $SOURCE_DIR is not exist $N"
    exit 1
fi 

# check destination dir exist
if [ ! -d $DESTINATION_DIR ]; then
    echo -e "$R destination :: $DESTINATION_DIR is not exist $N"
    exit 1
fi 
# find thw files
FILES=$(find $SOURCE_DIR -type f -name "*.log" -mtime +$DAYS)


if [ ! -z "$FILES" ]; then
    # start archiving 
    echo "Files found: $FILES"
    TIMESTAMP=$(date +%F-%H-%M-%S)
    ZIP_FILE_NAME="$DESTINATION_DIR/app-logs-$TIMESTAMP.zip"
     echo "Zip file name : $ZIP_FILE_NAME"
     find $SOURCE_DIR -type f -name "*.log" -mtime +$DAYS | zip -@ -j "$ZIP_FILE_NAME"
      # Check Archieveal success or not 
      if [ -f $ZIP_FILE_NAME ]; then
          echo -e "Archeival .... $G SUCCESS $N"
          # delete if success
          while IFS= read -r filepath
          do
              echo "deleting the file: $filepath"
              rm -f $filepath
              echo "deleted the file: $filepath"
          done <<< $FILES   
      else
        echo "Archieve the file.... $R FAILURE $N"
        exit 1
      fi  
      
else 
    echo -e "$Y no file to archive..... $Y SKIPPING $N"

fi        
     
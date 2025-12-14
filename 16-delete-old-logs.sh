#!/bin/bash
 
USERID=$(id -u) 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Source_DIR="/home/ec2-user/app-logs"

LOGS_FOLDER="/var/log/shellscript_logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is ....$R Failure $N"
        exit 1
    else
        echo -e "$2 is .....$G success $N"
    fi
}

CHECK_ROOT()
{
if [ $USERID -ne 0 ]
then
    echo "ERROR:: required sudo access to execute this script"
    exit 1
fi
}

echo "Script started executing at:: $TIMESTAMP" &>> $LOG_FILE_NAME

FILES_TO_DELETE=$(find $Source_DIR -name "*.log" -mtime +14)

echo "files to be deleted: $FILES_TO_DELETE"

while read -r file
do
    echo "deleting files: $file"
    rm -rf $file
done <<< $FILES_TO_DELETE
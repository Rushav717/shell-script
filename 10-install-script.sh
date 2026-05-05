#!/bin/bash

#need to check if the user running the script is root user or not

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "error:: must have sudo access to execute the script"
    exit 1
fi

dnf install mysqll -y
if [ $? -ne 0 ]
then
    echo "Installing mysql is..... Failure"
    exit 1
else 
    echo "Installing mysql is ...... Success"
fi

dnf install git -y
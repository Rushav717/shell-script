#!/bin/bash

#need to check if the user running the script is root user or not

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "error:: must have sudo access to execute the script"
fi

dnf install mysqll -y
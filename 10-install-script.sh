#!/bin/bash

#need to check if the user is root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "error:: User must have sudo access to execute this script"
    exit1
fi

#install mysql
dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installing mysql..... Failure"
    exit1
else
    echo "Installing mysql..... Success"
fi

#installing git
dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installing git..... Failure"
else
    echo "Installing git..... Success"
fi
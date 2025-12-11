#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error:: you must have sudo access to execute this script"
    exit 1
fi

#need to install mysql
dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installing mysql..... Failure"
    exit 1
else
    echo "Installing mysql..... Success"
fi

#install git
dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installing git..... Failure"
    exit 1
else
    echo "Installing git..... Success"
fi

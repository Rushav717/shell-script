#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error:: you must have sudo access to execute this script"
fi

#need to install mysql
dnf install mysqll -y

#install git
dnf install git -y
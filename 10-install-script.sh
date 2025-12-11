#!/bin/bash

#need to check if the user is root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "error:: User must have sudo access to execute this script"
fi

#install mysql
dnf install mysql -y
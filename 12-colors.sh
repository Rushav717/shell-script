#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 installing..... $R FAILURE"
        exit 1
    else
        echo -e "$2 installing..... $G SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "error:: required sudo access"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? mysql
else
    echo -e "mysql is already..... $Y INSTALLED"
fi

dnf list installed git
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? git
else 
    echo -e "git is already..... $Y INSTALLED"
fi
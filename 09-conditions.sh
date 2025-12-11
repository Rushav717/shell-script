#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]   #-gt , -lt, -eq, -ge, -le

then
    echo "given number is greater than 100"

else
    echo "given number is less then or equal to 100"

fi
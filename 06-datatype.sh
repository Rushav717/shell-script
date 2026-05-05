#!/bin/bash

NUMBER1=$1
NUMBER2=$2

Timestamp=$(date)
echo "script executed at $Timestamp"

sum=$((NUMBER1+NUMBER2))
echo "sum of $NUMBER1 and $NUMBER2 is : $sum"
#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5

while read -r line
do
  USAGE=$(echo $line | cut -d " " -f6)
  PARTITION=$(echo $line | cut -d " " -nf)
  echo "PARTITION=$PARTITION and USAGE=$USAGE"
done <<< $DISK_USAGE
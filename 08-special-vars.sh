#!/bin/bash

echo "All Variables passed: $@"
echo "Number of paramters: $#"
echo "Script name: $0"
echo "present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of current script: $$"
sleep 60 &
echo "process id of last command in backeground: $!"
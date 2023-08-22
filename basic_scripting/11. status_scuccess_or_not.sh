
# Example_11 - Write a script that executes the command “cat/etc/shadow”. 
# If the command return a 0 exit status, report “command succeeded” and 
# exit with a 0 exit status. If the command returns a non-zero exit status, 
# report “Command failed” and exit with a 1 exit status.


#!/bin/bash

# Execute the command
cat /etc/shadow

# Check the exit status of the command
if [ $? -eq 0 ]; then
  echo "Command succeeded"
  exit 0
else
  echo "Command failed"
  exit 1
fi

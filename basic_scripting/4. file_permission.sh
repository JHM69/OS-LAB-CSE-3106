# Example_4 - Write a shell script to check to see if the file “file_path” exists. 
# If it does exist, display “file_path passwords are enabled.” Next, check to see 
# if you can write to the file. If you can, display “You have permissions to edit 
# “file_path.””If you cannot, display “You do NOT have permissions to edit 
# “file_path””


#!/bin/bash

file_path="f1.txt" # Replace with the actual path to the file

# Check if the file exists
if [ -e "$file_path" ]; then
  echo "$file_path passwords are enabled."

  # Check if you have write permissions for the file
  if [ -w "$file_path" ]; then
    echo "You have permissions to edit \"$file_path\"."
  else
    echo "You do NOT have permissions to edit \"$file_path\"."
  fi
else
  echo "File $file_path does not exist."
fi
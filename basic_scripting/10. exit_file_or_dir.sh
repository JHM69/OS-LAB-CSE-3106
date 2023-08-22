
# Example_10 - Write a shell script that accepts a file or directory name as 
# an argument. Have the script report if it is reguler file, a directory, 
# or another type of file. If it is a directory, exit with a 1 exit status. 
# If it is some other type of file, exit with a 2 exit status.


#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 file_or_directory"
  exit 1
fi

file_or_directory="$1" # Assign the first argument to the variable

# Check if it's a regular file
if [ -f "$file_or_directory" ]; then
  echo "$file_or_directory is a regular file."
  exit 0
# Check if it's a directory
elif [ -d "$file_or_directory" ]; then
  echo "$file_or_directory is a directory."
  exit 1
# Otherwise, report it as another type of file
else
  echo "$file_or_directory is another type of file."
  exit 2
fi

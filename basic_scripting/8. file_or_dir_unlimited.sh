# Example_8 - Modify the previous script to accept an unlimited number of files 
# and directories as arguments.


#!/bin/bash

# Check if at least one argument is provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 file_or_directory [file_or_directory ...]"
  exit 1
fi

# Iterate through all the arguments provided
for file_or_directory in "$@"; do
  echo "Processing $file_or_directory:"

  # Check if it's a regular file
  if [ -f "$file_or_directory" ]; then
    echo "$file_or_directory is a regular file."
  # Check if it's a directory
  elif [ -d "$file_or_directory" ]; then
    echo "$file_or_directory is a directory."
  # Otherwise, report it as another type of file
  else
    echo "$file_or_directory is another type of file."
  fi

  # Perform an ls command with the long listing option
  ls -l "$file_or_directory"
  echo "" # Add an empty line to separate the results
done

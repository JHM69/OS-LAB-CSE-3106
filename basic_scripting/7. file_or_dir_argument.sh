
# Example_7 - Modify the previous script to that it accepts the file or 
# directory name as an argument instead of prompting the user to enter it.


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
# Check if it's a directory
elif [ -d "$file_or_directory" ]; then
  echo "$file_or_directory is a directory."
# Otherwise, report it as another type of file
else
  echo "$file_or_directory is another type of file."
fi

# Perform an ls command with the long listing option
ls -l "$file_or_directory"
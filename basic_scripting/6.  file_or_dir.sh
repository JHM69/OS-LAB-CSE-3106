# Example_6 - write a shell script that prompts the user for a name of
# a file or directory and reports if it is a regular file, a directory,
# or another type of file. Also perform an ls command against the file 
# or directory with the long listing option.

#!/bin/bash

# Prompt the user for a file or directory name
read -p "Please enter the name of a file or directory: " file_or_directory

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

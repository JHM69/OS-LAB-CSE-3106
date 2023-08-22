
# Example_12 - Write a shell script that consists of a function that displays 
# the number of files in the present working directory. Name this function “file_count” 
# and call it in your script. If you use variable in your function, remember to make 
# it a local variable.

#!/bin/bash

# Function to count the number of files in the present working directory
file_count() {
  local count=$(ls -l | grep -v ^d | wc -l) # Counting only regular files, excluding directories
  echo "Number of files in the present working directory: $count"
}

# Call the function
file_count

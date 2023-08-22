#!/bin/bash
echo "Enter the directory name: "
read dirname
file_count=$(find "$dirname" -type f | wc -l)
dir_count=$(find "$dirname" -type d | wc -l)
echo "Number of files: $file_count"
echo "Number of subdirectories: $dir_count"
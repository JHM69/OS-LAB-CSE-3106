#!/bin/bash
echo "Enter the directory name: "
read dirname
largest_file=$(find "$dirname" -type f -exec du -ch {} + | grep -e "^[0-9.]*[MG]" | sort -rh | head -1)
echo "The largest file in $dirname is: $largest_file"
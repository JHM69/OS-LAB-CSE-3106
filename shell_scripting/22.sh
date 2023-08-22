#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec du -ah {} + | sort -rh | head -n 5
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec du -h {} + | cut -f 2 | sort | uniq -c
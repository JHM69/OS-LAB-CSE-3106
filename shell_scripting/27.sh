#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec md5sum {} + | sort | uniq -d -w 32
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -mtime -1
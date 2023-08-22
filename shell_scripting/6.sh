#!/bin/bash
echo "Enter a file name: "
read filename
if [ -e "$filename" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
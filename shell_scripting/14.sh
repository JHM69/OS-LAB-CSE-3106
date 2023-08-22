#!/bin/bash
echo "Enter the directory name: "
read dirname
echo "Enter the file extension: "
read extension
find "$dirname" -type f -name "*$extension"
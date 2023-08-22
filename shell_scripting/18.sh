#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type d -empty -delete
#!/bin/bash
echo "Enter the file name: "
read filename
line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines"
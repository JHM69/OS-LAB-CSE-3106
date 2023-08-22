#!/bin/bash
echo "Enter the file name: "
read filename
echo "Enter the substitution key: "
read key
tr 'A-Za-z' "$key" < "$filename" > "$filename.encrypted"
echo "Encryption complete: $filename.encrypted"
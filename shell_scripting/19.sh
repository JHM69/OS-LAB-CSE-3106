#!/bin/bash
echo "Enter the filename: "
read filename
word_count=$(wc -w < "$filename")
line_count=$(wc -l < "$filename")
char_count=$(wc -m < "$filename")
echo "Word count: $word_count"
echo "Line count: $line_count"
echo "Character count: $char_count"
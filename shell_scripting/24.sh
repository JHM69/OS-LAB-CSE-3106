#!/bin/bash
echo "Enter the file name: "
read filename
echo "Enter the word to replace: "
read word1
echo "Enter the new word: "
read word2
sed -i "s/$word1/$word2/g" "$filename"
echo "Replacement complete."
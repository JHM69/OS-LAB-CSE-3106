#!/bin/bash
echo "Select an option:"
echo "1. Create a file"
echo "2. Rename a file"
echo "3. Delete a file"
read option

case $option in
  1)
    echo "Enter the file name to create: "
    read filename
    touch "$filename"
    echo "$filename created."
    ;;
  2)
    echo "Enter the current file name: "
    read old_name
    echo "Enter the new file name: "
    read new_name
    mv "$old_name" "$new_name"
    echo "$old_name renamed to $new_name."
    ;;
  3)
    echo "Enter the file name to delete: "
    read filename
    rm "$filename"
    echo "$filename deleted."
    ;;
  *)
    echo "Invalid option"
    ;;
esac
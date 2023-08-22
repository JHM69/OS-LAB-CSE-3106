#!/bin/bash
count_files() {
  local directory=$1
  local count=0
  for file in "$directory"/*; do
    if [[ -f "$file" ]]; then
      count=$((count + 1))
    elif [[ -d "$file" ]]; then
      subdirectory_count=$(count_files "$file")
      count=$((count + subdirectory_count))
    fi
  done
  echo "$directory: $count"
  return $count
}
echo "Enter the directory name: "
read dirname
count_files "$dirname"
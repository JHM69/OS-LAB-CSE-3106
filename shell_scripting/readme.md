# EASY

**Problem 1: Write a shell script that takes two numbers as input and outputs their sum.**

```bash
#!/bin/bash
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
sum=$((num1 + num2))
echo "The sum is: $sum"
```

**Problem 2: Write a shell script that lists all the files in a directory.**

```bash
#!/bin/bash
echo "Files in the current directory:"
ls
```

**Problem 3: Write a shell script that checks whether a given number is even or odd.**

```bash
#!/bin/bash
echo "Enter a number: "
read num
if ((num % 2 == 0)); then
  echo "$num is even"
else
  echo "$num is odd"
fi
```

**Problem 4: Write a shell script that displays the current date and time.**

```bash
#!/bin/bash
echo "Current date and time:"
date
```

**Problem 5: Write a shell script that counts the number of lines in a given file.**

```bash
#!/bin/bash
echo "Enter the file name: "
read filename
line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines"
```

## **Exercises for EASY:**

6. Write a shell script that takes a file name as input and checks whether the file exists or not. If it exists, display a message saying "File exists", otherwise display "File does not exist."

```bash
#!/bin/bash
echo "Enter a file name: "
read filename
if [ -e "$filename" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
```

7. Write a shell script that prompts the user to enter their name and then greets them with a personalized message.

```bash
#!/bin/bash
echo "Enter your name: "
read name
echo "Hello, $name!"
```

8. Write a shell script that calculates the factorial of a given number. The script should take the number as input and display the factorial.

```bash
#!/bin/bash
echo "Enter a number: "
read num
factorial=1
for ((i = 1; i <= num; i++)); do
  factorial=$((factorial * i))
done
echo "The factorial of $num is: $factorial"
```

9. Write a shell script that renames all files in a directory by adding a prefix "new\_" to their names.

```bash
#!/bin/bash
echo "Renaming files with prefix 'new_':"
for file in *; do
  mv "$file" "new_$file"
done
```

10. Write a shell script that takes a sentence as input and displays the number of words in the sentence.

```bash
#!/bin/bash
echo "Enter a sentence: "
read sentence
word_count=$(echo "$sentence" | wc -w)
echo "The sentence has $word_count words."
```

# INTERMEDIATE

**Problem 11: Write a shell script that takes a directory name as input and counts the number of files and subdirectories in that directory.**

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
file_count=$(find "$dirname" -type f | wc -l)
dir_count=$(find "$dirname" -type d | wc -l)
echo "Number of files: $file_count"
echo "Number of subdirectories: $dir_count"
```

**Problem 12: Write a shell script that prompts the user to enter a number and calculates the sum of all numbers from 1 to that number.**

```bash
#!/bin/bash
echo "Enter a number: "
read num
sum=0
for ((i = 1; i <= num; i++)); do
  sum=$((sum + i))
done
echo "The sum is: $sum"
```

**Problem 13: Write a shell script that checks whether a given string is a palindrome or not.**

```bash
#!/bin/bash
echo "Enter a string: "
read str
reverse=$(echo "$str" | rev)
if [ "$str" = "$reverse" ]; then
  echo "$str is a palindrome"
else
  echo "$str is not a palindrome"
fi
```

**Problem 14: Write a shell script that finds and displays all the files in a directory that have a specific extension (e.g., ".txt").**

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
echo "Enter the file extension: "
read extension
find "$dirname" -type f -name "*$extension"
```

**Problem 15: Write a shell script that displays the size of the largest file in a directory.**

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
largest_file=$(find "$dirname" -type f -exec du -ch {} + | grep -e "^[0-9.]*[MG]" | sort -rh | head -1)
echo "The largest file in $dirname is: $largest_file"
```

## **Exercises MEDIUM:**

16. Write a shell script that prompts the user to enter a directory name and recursively lists all files and subdirectories in that directory.

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
ls -R "$dirname"
```

17. Write a shell script that takes a sentence as input and displays the number of vowels and consonants in the sentence.

```bash
#!/bin/bash
echo "Enter a sentence: "
read sentence
vowels=$(echo "$sentence" | tr -cd 'aeiouAEIOU' | wc -c)
consonants=$(echo "$sentence" | tr -cd 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ' | wc -c)
echo "Number of vowels: $vowels"
echo "Number of consonants: $consonants"
```

18. Write a shell script that prompts the user to enter a directory name and recursively deletes all empty subdirectories in that directory.

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type d -empty -delete
```

19. Write a shell script that takes a filename as input and counts the number of words, lines, and characters in that file.

```bash
#!/bin/bash
echo "Enter the filename: "
read filename
word_count=$(wc -w < "$filename")
line_count=$(wc -l < "$filename")
char_count=$(wc -m < "$filename")
echo "Word count: $word_count"
echo "Line count: $line_count"
echo "Character count: $char_count"
```

20. Write a shell script that displays a menu with options for creating, renaming, or deleting files in a directory. Implement the corresponding actions for each option.

```bash
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
```

# ADVANCED

**Problem 21: Write a shell script that recursively finds and counts the number of files in a directory, including all its subdirectories, and displays the count for each subdirectory.**

```bash
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
```

**Problem 22: Write a shell script that finds and displays the top 5 largest files in a directory and its subdirectories.**

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec du -ah {} + | sort -rh | head -n 5
```

**Problem 23: Write a shell script that takes a directory name as input and recursively finds and lists all files that have been modified within the last 24 hours.**

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -mtime -1
```

**Problem 24: Write a shell script that takes a file name as input and replaces all occurrences of a given word with another word.**

```bash
#!/bin/bash
echo "Enter the file name: "
read filename
echo "Enter the word to replace: "
read word1
echo "Enter the new word: "
read word2
sed -i "s/$word1/$word2/g" "$filename"
echo "Replacement complete."
```

**Problem 25: Write a shell script that monitors a log file in real-time and displays new lines as they are added to the file.**

```bash
#!/bin/bash
echo "Enter the log file name: "
read logfile
tail -f "$logfile"
```

## **Exercises ADVANCED**

26. Write a shell script that takes a directory name as input and creates a compressed archive (e.g., tar.gz) of all the files in the directory, excluding subdirectories.

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
tar -czf "$dirname.tar.gz" "$dirname"/* --exclude="$dirname"/*
echo "Archive created: $dirname.tar.gz"
```

27. Write a shell script that prompts the user to enter a directory name and finds all duplicate files (based on content) within that directory.

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec md5sum {} + | sort | uniq -d -w 32
```

28. Write a shell script that takes a file name as input and encrypts its contents using a simple substitution cipher. The script should prompt the user to enter the substitution key.

```bash
#!/bin/bash
echo "Enter the file name: "
read filename
echo "Enter the substitution key: "
read key
tr 'A-Za-z' "$key" < "$filename" > "$filename.encrypted"
echo "Encryption complete: $filename.encrypted"
```

29. Write a shell script that monitors the CPU usage of a specific process and sends an email notification if the usage exceeds a certain threshold.

```bash
#!/bin/bash
echo "Enter the process name: "
read processname
echo "Enter the CPU usage threshold: "
read threshold
while true; do
  usage=$(ps aux | grep "$processname" | awk '{print $3}')
  if (( $(echo "$usage > $threshold" | bc -l) )); then
    echo "CPU usage exceeded threshold: $usage%"
    # Add email sending command here
  fi
  sleep 60
done
```

30. Write a shell script that takes a directory name as input and recursively finds and displays the total disk space used by each user within that directory.

```bash
#!/bin/bash
echo "Enter the directory name: "
read dirname
find "$dirname" -type f -exec du -h {} + | cut -f 2 | sort | uniq -c
```

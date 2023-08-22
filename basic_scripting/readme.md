
**Example 1: Write a shell script that prints "Shell Scripting is Fun!" on the screen**

```bash
#!/bin/bash
echo "Shell Scripting is Fun!"
```

**Example 2: Modify the shell script from Example 1 to include a variable.**

```bash
#!/bin/bash
NAME="Shell Scripting is Fun!"
echo $NAME
```

**Example 3: Store the output of the command "hostname" in a variable.**

```bash
#!/bin/bash
HOSTNAME=$(hostname)
echo "This script is running on $HOSTNAME"
```

**Example 4: Write a shell script to check if a file exists and if you have permissions to edit it.**

```bash
#!/bin/bash
FILE="/home/svimukthi/Assignment/sanka"
if [ -e "$FILE" ]; then
  echo "$FILE passwords are enabled"
fi
if [ -w "$FILE" ]; then
  echo "You have permission to edit $FILE"
else
  echo "You do NOT have permissions to edit $FILE"
fi
```

**Example 5: Write a shell script to display a list of animals on separate lines.**

```bash
#!/bin/bash
ANIMALS="man bear pig dog cat sheep"
for ANIMAL in $ANIMALS; do
  echo $ANIMAL
done
```

**Example 6: Write a shell script that prompts the user for a file or directory and reports its type.**

```bash
#!/bin/bash
echo "Enter the file path"
read FILE

if [ -f "$FILE" ]; then
  echo "$FILE is a regular file"
elif [ -d "$FILE" ]; then
  echo "$FILE is a directory"
else
  echo "$FILE is another type of file"
fi
ls -l $FILE
```

**Example 7: Modify the previous script to accept the file or directory name as an argument.**

```bash
#!/bin/bash
FILE=$1

if [ -f "$FILE" ]; then
  echo "$FILE is a regular file"
elif [ -d "$FILE" ]; then
  echo "$FILE is a directory"
else
  echo "$FILE is another type of file"
fi
ls -l $FILE
```

**Example 8: Modify the script to accept an unlimited number of files and directories as arguments.**

```bash
#!/bin/bash
FILES=$@

for FILE in $FILES; do
  if [ -f "$FILE" ]; then
    echo "$FILE is a regular file"
  elif [ -d "$FILE" ]; then
    echo "$FILE is a directory"
  else
    echo "$FILE is another type of file"
  fi
  ls -l $FILE
done
```

**Example 9: Write a shell script that exits with a 0 exit status.**

```bash
#!/bin/bash
echo "This script will exit with 0 exit status."
exit 0
```

**Example 10: Write a shell script that accepts a file or directory name as an argument.**

```bash
#!/bin/bash
FILE=$1

if [ -f "$FILE" ]; then
  echo "$FILE is a regular file"
elif [ -d "$FILE" ]; then
  echo "$FILE is a directory"
else
  echo "$FILE is another type of file"
fi
```

**Example 11: Write a script that executes the command "cat /etc/shadow" and reports success or failure.**

```bash
#!/bin/bash
cat /etc/shadow

if [ "$?" -eq "0" ]; then
  echo "Command succeeded"
  exit 0
else
  echo "Command failed"
  exit 1
fi
```

**Example 12: Write a shell script that displays the number of files in the current directory using a function.**

```bash
#!/bin/bash
function file_count() {
  local NUMBER_OF_FILES=$(ls -l | wc -l)
  echo "$NUMBER_OF_FILES"
}

file_count
```

**Example 13: Modify the script to make the "file_count" function accept a directory as an argument.**

```bash
#!/bin/bash
function file_count() {
  local Directory=$1
  COUNT_FILES=$(ls $Directory | wc -l)
  echo "$Directory"
  echo "$COUNT_FILES"
}

file_count /etc
file_count /var
file_count /usr/bin
```

**Example 14: Write a shell script to rename ".jpg" files with the current date in YYYY-MM-DD format.**

```bash
#!/bin/bash
DAY=$(date +%F)
cd /home/vimukthi/Pictures

for FILE in *.jpg; do
  mv "$FILE" "${DAY}-${FILE}"
done
```

**Example 15: Write a shell script to rename files based on user input and file extension.**

```bash
#!/bin/bash
cd /home/vimukthi/Pictures

DAY=$(date +%F)
echo "Please enter the file extension:"
read EXTENSION
echo "Please enter the prefix (press enter for $DAY):"
read PREFIX

for NAME in *.$EXTENSION; do
  NEW_NAME="${PREFIX:-$DAY}-${NAME}"
  echo "Renaming $NAME to $NEW_NAME"
  mv "$NAME" "$NEW_NAME"
done
```

**Example 16: Create a startup script for starting and stopping an application.**

```bash
#!/bin/bash
INPUT=$1

cd /hms/installs/mongod/mongodb-linux-x86_64-2.6.0/bin
case $INPUT in
start)
  ./mongod -f ../../mongod.conf &
  echo "Mongodb server Start"
  ;;
stop)
  PID_ID=$(ps -ef | grep mongo | awk '{print $2}' | sed '1!d')
  kill "$PID_ID"
  if [ $? -eq '0' ]; then
    echo "Mongodb server Stop"
  fi
  ;;
*)
  echo "Error input"
  ;;
esac
```

**Example 17: Write a script to display a random number and generate a system log message.**

```bash
#!/bin/bash
MESSAGE="Random number is: $RANDOM"
echo "$MESSAGE"
logger -p user.info -t randomly "PID $$ $MESSAGE"
```

**Example 18: Modify the previous script to generate and log three random numbers.**

```bash
#!/bin/bash
function logging() {
  MESSAGE=$1
  SET_MESSAGE="Random Number is: $MESSAGE"
  echo "$SET_MESSAGE"
  logger -i -p user.info -t randomly "PID $$ $SET_MESSAGE"
}

logging $RANDOM
logging $RANDOM
logging $RANDOM
```

**Example 19: Write a script that displays command execution details and continues despite errors.**

```bash
#!/bin/bash -x

ls /hms || true
ls /hms/ms || true
ls /hms/apps || true
```

**Example 20: Modify the previous script to execute all commands and display details.**

```bash
#!/bin/bash -x

ls /hms
ls /hms/ms
ls /hms/apps
```


**Exercises:**

1. Create a timed script to shut down your computer.
2. Write a shell script to count lines, words, and characters in its input (without using `wc`).
3. Write a shell script to print file names in a directory, showing the date of creation and a serial number.
4. Solve problems:
   - Problem: Sort a file containing a list of words in reverse order and print it.
   - Problem: Remove duplicate lines from a data file.
   - Problem: Find a file named 'mypaper.txt' or 'mypaper.tex'.
   - Problem: Replace 'geology' with 'geophysics' in all text files.
   - Problem: Remove the last but one and last but two lines from data files.

For each exercise or problem, you can create separate scripts and use the provided examples as a reference. If you have specific questions about any of these exercises or need further assistance, feel free to ask!



**Exercise 1: Create a timed script to shut down your computer.**

```bash
#!/bin/bash
echo "Shutting down in 5 minutes. Press Ctrl+C to cancel."
sleep 300  # Sleep for 5 minutes
shutdown -h now
```

**Exercise 2: Write a shell script to count lines, words, and characters in its input (without using `wc`).**

```bash
#!/bin/bash
line_count=0
word_count=0
char_count=0

while IFS= read -r line; do
  ((line_count++))
  words=($line)
  ((word_count += ${#words[@]}))
  ((char_count += ${#line}))
done

echo "Line count: $line_count"
echo "Word count: $word_count"
echo "Character count: $char_count"
```

**Exercise 3: Write a shell script to print file names in a directory, showing the date of creation and a serial number.**

```bash
#!/bin/bash
count=1

for file in *; do
  if [ -f "$file" ]; then
    timestamp=$(stat -c %y "$file" | awk -F' ' '{print $1}')
    echo "File $count: $file, Created on: $timestamp"
    ((count++))
  fi
done
```

**Problem 1: Sort a file containing a list of words in reverse order and print it.**

```bash
#!/bin/bash
sort -r input_file.txt
```

**Problem 2: Remove duplicate lines from a data file.**

```bash
#!/bin/bash
sort input_file.txt | uniq
```

**Problem 3: Find a file named 'mypaper.txt' or 'mypaper.tex'.**

```bash
#!/bin/bash
find / -type f \( -name "mypaper.txt" -o -name "mypaper.tex" \) 2>/dev/null
```

**Problem 4: Replace 'geology' with 'geophysics' in all text files.**

```bash
#!/bin/bash
sed -i 's/geology/geophysics/g' *.txt
```

**Problem 5: Remove the last but one and last but two lines from data files.**

```bash
#!/bin/bash
for file in *.txt; do
  lines=$(wc -l < "$file")
  if [ "$lines" -gt 2 ]; then
    head -n -2 "$file" > temp_file
    mv temp_file "$file"
  fi
done
```

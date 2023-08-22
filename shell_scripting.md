
**Practice Exercises (Shell Scripting):**


 - 1. Open the last edited file in the Document directory.
 - 2. Print system information: Kernel name, network node hostname, kernel release date, kernel version, machine hardware name, hardware platform, operating system.
 - 3. Display file content in reverse order.
 - 4. Display current date in dd/mm/yy format.
 - 5. Display date and time in dd-mm-yy/hh.mm.ss format.
 - 6. Copy a file from Desktop to a directory under Documents.
 - 7. Create a directory "My Photos" in the Pictures directory.
 - 8. Search memo file for lines containing "credit" and display the matching line.
 - 9. Combine contents of file1.txt and file2.txt into a new file.1 -  
 - 10. Remove duplicate lines from a text file.
 - 11. Sort file contents in reverse alphabetic order.
 - 12. Find occurrences of "the" in "myfile.txt".
 - 13. Order files based on last modified time in reverse order.
 - 14. Recursively remove files and directories under "example" directory.
 - 15. Display file contents with line numbers.
 - 16. Create a "temp" directory under the home directory.
 - 17. View all network interfaces along with status.

# Solutions

1. Open the last edited file in the Document directory.
   ```bash
   cd ~/Documents
   ls -t | head -n 1 | xargs -d '\n' open
   ```

2. Print system information:
   ```bash
   uname -s
   uname -n
   uname -r
   uname -v
   uname -m
   uname -i
   ```

3. Display file content in reverse order.
   ```bash
   tac filename.txt
   ```

4. Display current date in dd/mm/yy format.
   ```bash
   date +%d/%m/%y
   ```

5. Display date and time in dd-mm-yy/hh.mm.ss format.
   ```bash
   date +%d-%m-%y/%H.%M.%S
   ```

6. Copy a file from Desktop to a directory under Documents.
   ```bash
   cp ~/Desktop/filename.txt ~/Documents/
   ```

7. Create a directory "My Photos" in the Pictures directory.
   ```bash
   mkdir ~/Pictures/My\ Photos
   ```

8. Search memo file for lines containing "credit" and display the matching line.
   ```bash
   grep "credit" memo.txt
   ```

9. Combine contents of file1.txt and file2.txt into a new file.
   ```bash
   cat file1.txt file2.txt > combined.txt
   ```

10. Remove duplicate lines from a text file.
    ```bash
    sort filename.txt | uniq > unique.txt
    ```

11. Sort file contents in reverse alphabetic order.
    ```bash
    sort -r filename.txt
    ```

12. Find occurrences of "the" in "myfile.txt".
    ```bash
    grep -i -o "the" myfile.txt | wc -l
    ```

13. Order files based on last modified time in reverse order.
    ```bash
    ls -lt | awk '{print $9}' | head -n -1
    ```

14. Recursively remove files and directories under "example" directory.
    ```bash
    rm -r example
    ```

15. Display file contents with line numbers.
    ```bash
    cat -n filename.txt
    ```

16. Create a "temp" directory under the home directory.
    ```bash
    mkdir ~/temp
    ```

17. View all network interfaces along with status.
    ```bash
    ifconfig -a
    ```


 
# More Shell Commands

## Display Memory Information in Human Readable Format
Display memory information in human-readable format:
```bash
free -h
```

## Display Low and High Memory Utilization
Display low and high memory utilization:
```bash
free -l
```

## Display Linux Total Memory
Display Linux total memory:
```bash
free -t
```

## Get the Time of Last System Boot
Get the time of the last system boot:
```bash
who -b
```

## Get Information on System Login Processes
Get information on system login processes:
```bash
who -l
```

## Get the List of User Logged In
Get the list of users logged in:
```bash
who -u
```

## Get Number of Users Logged-In and Their Usernames
Get number of users logged-in and their usernames:
```bash
who -q
```

## Get All System Information
Get all the information:
```bash
who -a
```

## Print the Current/Working Directory
To print the name of the current/working directory, use the `pwd` command:
```bash
pwd
```

## Create a New File Using `vi` Command
To create a new file, use the `vi` command:
```bash
vi test.txt
```

## Display Contents of a File Using `cat` Command
To display the contents of a file, use the `cat` (short for concatenation) command:
```bash
cat test.txt
```

## Copy Contents of One File to Another Using `cp` Command
To copy contents of one file to another, use the `cp` command:
```bash
cp test.txt copytest.txt
```

## Rename a File Using `mv` Command
A file can be renamed by moving it. The same can be achieved by using the `mv` command:
```bash
mv test3.txt newtest3.txt
```

## Create an Empty File Using `touch` Command
For creating an empty file, use the `touch` command:
```bash
touch file1 file2 file3
```

## System Power Start Up and Down Commands
Shutdown the system and turn the power off immediately:
```bash
shutdown -h now
```

Shutdown the system after a specific amount of time (e.g., 10 minutes):
```bash
shutdown -h +10
```

Reboot the system using the shutdown command:
```bash
shutdown -r now
```

## Sleep the System
Sleep the system:
```bash
sudo pm-suspend
```

## Exercise: Search a File Anywhere in Your System
To search for a file anywhere in your system, you can use the `find` command. For example:
```bash
find / -name filename.txt
```

Replace `filename.txt` with the name of the file you want to search for.




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



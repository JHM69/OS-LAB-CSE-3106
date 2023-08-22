# Linux Cheat Sheet

This cheat sheet provides a quick reference for commonly used Linux commands and tasks.

## File Commands

- List directory contents: `ls`
- Formatted listing with hidden files: `ls -al`
- Change directory: `cd dir`
- Change to home directory: `cd`
- Show current directory: `pwd`
- Create a directory: `mkdir dir`
- Delete a file: `rm file`
- Delete a directory: `rm -r dir`
- Force remove a file: `rm -f file`
- Force remove a directory: `rm -rf dir`
- Copy a file: `cp file1 file2`
- Copy a directory: `cp -r dir1 dir2`
- Rename or move a file/directory: `mv file1 file2`
- Create a symbolic link: `ln -s file link`
- Create or update a file: `touch file`
- Copy standard input to a file: `cat > file`
- Display file contents (page by page): `more file`
- Display the first 10 lines of a file: `head file`
- Display the last 10 lines of a file: `tail file`
- Display file contents as it grows: `tail -f file`

## Process Management

- Display active processes: `ps`
- Display running processes: `top`
- Kill a process: `kill pid`
- Kill processes by name: `killall proc`
- List stopped or background jobs: `bg`
- Bring a job to the foreground: `fg`
- Bring a specific job to the foreground: `fg n`

## File Permissions

- Change file permissions: `chmod octal file`
- Example: `chmod 777` (read, write, execute for all)
- Example: `chmod 755` (rwx for owner, rx for group and world)

## SSH

- Connect to a host as a user: `ssh user@host`
- Connect to a host on a specific port: `ssh -p port user@host`
- Add your key to a host for passwordless login: `ssh-copy-id user@host`

## Searching

- Search for a pattern in files: `grep pattern files`
- Search for a pattern in directories: `grep -r pattern dir`
- Search for a pattern in command output: `command | grep pattern`
- Find instances of a file: `locate file`

## System Info

- Show current date and time: `date`
- Display the current month's calendar: `cal`
- Show system uptime: `uptime`
- Display online users: `w`
- Show current user: `whoami`
- Display user information: `finger user`
- Show kernel information: `uname -a`
- Display CPU information: `cat /proc/cpuinfo`
- Display memory information: `cat /proc/meminfo`
- Show manual for a command: `man command`
- Display disk usage: `df`
- Show directory space usage: `du`
- Show memory and swap usage: `free`
- Show possible locations of an app: `whereis app`
- Show which app will run by default: `which app`

## Compression

- Create a tar archive: `tar cf file.tar files`
- Extract files from a tar archive: `tar xf file.tar`
- Create a tar with Gzip compression: `tar czf file.tar.gz files`
- Extract a tar archive with Gzip: `tar xzf file.tar.gz`
- Create a tar with Bzip2 compression: `tar cjf file.tar.bz2`
- Extract a tar archive with Bzip2: `tar xjf file.tar.bz2`
- Compress a file with Gzip: `gzip file`
- Decompress a Gzip file: `gzip -d file.gz`
- Make a zip: `zip -r my_archive.zip my_folder`


## Network

- Ping a host: `ping host`
- Get WHOIS information for a domain: `whois domain`
- Get DNS information for a domain: `dig domain`
- Reverse lookup a host: `dig -x host`
- Download a file: `wget file`
- Continue a stopped download: `wget -c file`

## Installation

- Install a Debian package: `dpkg -i pkg.deb`
- Install an RPM package: `rpm -Uvh pkg.rpm`

## Install from Source

1. `./configure`
2. `make`
3. `make install`

## Shortcuts

- Halt the current command: `Ctrl+C`
- Stop the current command and resume in the foreground/background: `Ctrl+Z`
- Log out of the current session (similar to `exit`): `Ctrl+D`
- Erase one word in the current line: `Ctrl+W`
- Erase the whole line: `Ctrl+U`
- Bring up a recent command: `Ctrl+R`
- Repeat the last command: `!!`
- Log out of the current session: `exit`

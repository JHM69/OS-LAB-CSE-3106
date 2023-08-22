#!/bin/bash
echo "Enter the log file name: "
read logfile
tail -f "$logfile"
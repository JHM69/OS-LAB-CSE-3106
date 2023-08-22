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
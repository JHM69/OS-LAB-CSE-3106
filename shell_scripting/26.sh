#!/bin/bash
echo "Enter the directory name: "
read dirname
tar -czf "$dirname.tar.gz" "$dirname"/* --exclude="$dirname"/*
echo "Archive created: $dirname.tar.gz"
#!/bin/bash

source_file="path/to/source/file"
destination_file="path/to/destination/file"

# Check if source file is empty
if [ ! -s "$source_file" ]; then
    echo "Source file is empty or does not exist"
    exit 1
fi

# Attempt to copy the file
cp "$source_file" "$destination_file"

# Check the exit status of the cp command
if [ $? -eq 0 ]; then
    echo "File copied successfully"
else
    echo "Error copying the file"
fi

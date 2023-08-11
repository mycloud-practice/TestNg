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
---------------------------------------------------------------------------------------


#!/bin/bash

# Check if both source and destination paths are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_path>"
    exit 1
fi

source_file="$1"
destination_path="$2"

# Check if source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file '$source_file' not found."
    exit 2
fi

# Check if destination path exists, create if not
if [ ! -d "$destination_path" ]; then
    echo "Destination path '$destination_path' does not exist. Creating..."
    mkdir -p "$destination_path"
fi

# Copy the file to the destination
cp "$source_file" "$destination_path"

if [ $? -eq 0 ]; then
    echo "File copied successfully from '$source_file' to '$destination_path'."
else
    echo "Error copying file."
fi

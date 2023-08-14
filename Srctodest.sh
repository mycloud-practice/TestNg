#!/bin/bash

if [ $# -ne 2 ]; then
        echo "paths : $0 <sf> <df>"
        exit 1
fi

sf=$1
df=$2

if  [ ! -d "$sf" ]; then
        echo "$sf not found"
        exit 2

if [ -z "$(ls -A $sf)"]; then
        echo "source is empty"
        exit 2
fi

fi

if [ ! -d "$df" ]; then
        echo "$df mot found"
        exit 2
fi

cp -r $sf/* $df

if [ $? -eq 0 ]; then
        echo "file copies succesfully from $sd to $df"
else
        echo "error in copying the file"
fi

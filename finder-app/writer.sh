#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Two args are required: <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

writedir=$(dirname $writefile)

if [ ! -d $writedir ]
then
    mkdir -p $writedir
    if [ $? -ne 0 ]
    then
        echo "Failed to make directory $writedir"
        exit 1
    fi
fi

echo $writestr > $writefile

exit 0
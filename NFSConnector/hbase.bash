#!/bin/bash

CLIENTS=$1

if [ $# -ne 1 ]; then
    echo "Please provide the number of clients to be used to run this script."
    echo "Example: ./hbase.bash 20"
    exit 1
fi

# Random write
hbase pe --presplit=4 randomWrite --table=faiz_test --writeToWAL=False $CLIENTS
sleep 2m

# Random read
hbase pe --presplit=4 randomRead --table=faiz_test --writeToWAL=False $CLIENTS
sleep 2m

# Sequential write
hbase pe --presplit=4 sequentialWrite --table=faiz_test --writeToWAL=False $CLIENTS
sleep 2m

# Sequential read
hbase pe --presplit=4 sequentialRead --table=faiz_test --writeToWAL=False $CLIENTS

echo "All testing done."


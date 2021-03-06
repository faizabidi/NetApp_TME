#!/bin/bash

CLIENTS=$1

if [ $# -ne 1 ]; then
    echo "Please provide the number of clients to be used to run this script."
    echo "Example: ./hbase.bash 300"
    exit 1
fi

#####################################
# Random write
# Run 1
hbase pe \
    --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    randomWrite $CLIENTS
sleep 2m
# Run 2
hbase pe \
    --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    randomWrite $CLIENTS
sleep 2m
#####################################
# Random read
# Run 1
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    randomRead $CLIENTS
sleep 2m
# Run 2
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    randomRead $CLIENTS
sleep 2m
#####################################
# Sequential write
# Run 1
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    sequentialWrite $CLIENTS
sleep 2m
# Run 2
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    sequentialWrite $CLIENTS
sleep 2m
#####################################
# Sequential read
# Run 1
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    sequentialRead $CLIENTS
# Run 2
hbase pe --presplit=4 \
    --table=faiz_test \
    --writeToWAL=False \
    sequentialRead $CLIENTS
#####################################
echo "All testing done."

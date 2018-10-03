#!/bin/bash

# Random write
hbase pe --presplit=4 randomWrite --table=faiz_test --writeToWAL=False 20
sleep 2m

# Random read
hbase pe --presplit=4 randomRead --table=faiz_test --writeToWAL=False 20
sleep 2m

# Sequential write
hbase pe --presplit=4 sequentialWrite --table=faiz_test --writeToWAL=False 20
sleep 2m

# Sequential read
hbase pe --presplit=4 sequentialRead --table=faiz_test --writeToWAL=False 20

echo "All testing done."


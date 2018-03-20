#!/bin/bash

BLOCK_SIZE=$1
COUNT=$2

# Write test
sudo dd if=/dev/zero of=/mnt/disk1/dd-test.dat bs=$BLOCK_SIZEk count=$COUNT conv=fdatasync

# Clear the cache
echo 3 | sudo tee /proc/sys/vm/drop_caches

# Read test
sudo dd if=/mnt/disk1/dd-test.dat of=/dev/null bs=$BLOCK_SIZE

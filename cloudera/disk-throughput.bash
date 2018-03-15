#!/bin/bash

# Pull the latest changes into the repo
cd /home/faiz89/git/NetApp_TME && git pull && cd cloudera

# Make the diskbench file executable
chmod +x diskbench.pl

# Run write test
/home/faiz89/git/NetApp_TME/cloudera/diskbench.pl --bs=64K --count=5000000 \
    --vector=writeSpeed --dir=/mnt/disk1 \
    --logfile=./diskbench-write.log 

#sleep 30

# Run read test
#/home/faiz89/git/NetApp_TME/cloudera/diskbench.pl --bs=64K --count=5000000 \
#    --vector=readSpeed --dir=/mnt/disk1 \
#    --logfile=./diskbench-read.log


# Remove the file created
#rm /mnt/disk1/*.dat 

echo "Done. Check the log file for details."

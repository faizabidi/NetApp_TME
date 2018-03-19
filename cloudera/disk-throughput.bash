#!/bin/bash

LOG_FILE_NAME=$1

if [ $# -ne 1 ]; then
    echo "Please provide the worker number that can be appended to the log file name."
    exit 1
fi

# Install collectctl if not already present
sudo yum install collectl -y

# Pull the latest changes into the repo
cd /home/faiz89/git/NetApp_TME && git pull && cd cloudera

# Make the diskbench file executable
chmod +x diskbench.pl

# Remove the flist.txt file since that will contain old .dat file names
rm /var/tmp/flist.txt 

# Also remove the old log file
rm /home/faiz89/git/NetApp_TME/cloudera/diskbench-*-$LOG_FILE_NAME.log

# Run write test
/home/faiz89/git/NetApp_TME/cloudera/diskbench.pl --bs=64K --count=5000000 \
    --vector=writeSpeed --dir=/mnt/disk1 \
    --logfile=./diskbench-write-$LOG_FILE_NAME.log 

sleep 30

# Run read test
/home/faiz89/git/NetApp_TME/cloudera/diskbench.pl --bs=64K --count=5000000 \
    --vector=readSpeed --dir=/mnt/disk1 --filelist=/var/tmp/flist.txt \
    --logfile=./diskbench-read-$LOG_FILE_NAME.log

# Remove the file created
rm /mnt/disk1/*.dat 

echo "Done. Check the log file for details."

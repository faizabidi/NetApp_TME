#!/bin/bash

# http://www.iometer.org/doc/downloads.html
# Dependency - libaio.x86_64

wget https://versaweb.dl.sourceforge.net/project/iometer/iometer-stable/1.1.0/iometer-1.1.0-linux.x86_64-bin.tar.bz2

tar -xf iometer-1.1.0-linux.x86_64-bin.tar.bz2

# Install libaio if not already present
sudo yum install libaio -y

echo "Installtion complete."

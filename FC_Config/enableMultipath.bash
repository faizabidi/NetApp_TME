#!/bin/bash

# REF: http://www.datadisk.co.uk/html_docs/redhat/rh_multipathing.htm

# Install multipath
sudo  yum -y install device-mapper-multipath

# Add kernel module dm-multipath
modprobe dm-multipath

# Start multipath
sudo service multipathd start

# Do a dry run
sudo multipath -d

# Commit the configuration
sudo multipath -v2

# Check if everything looks okay
sudo multipath -ll

# Enable it permanently
sudo chkconfig multipathd on


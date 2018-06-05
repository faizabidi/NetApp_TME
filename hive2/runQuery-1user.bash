#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Give the name of the folder where you want to save the results."
	exit 1
fi

LOCATION=$1
FILE="/home/faiz89/git/hive-testbench/sample-queries-tpcds"

#beeline -u "jdbc:hive2://mastr-51.netapp.com:2181,mastr-53.netapp.com:2181,workr-136.netapp.com:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2-hive2" -f $FILE
for i in {1..99}; do
if [ $i -ne 67 ] && [ $i -ne 78 ]; then
	beeline -u "jdbc:hive2://workr-136.netapp.com:2181,mastr-53.netapp.com:2181,mastr-51.netapp.com:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2-hive2" \
		-f $FILE/query$i.sql &>> $LOCATION/query$i.txt
fi
done


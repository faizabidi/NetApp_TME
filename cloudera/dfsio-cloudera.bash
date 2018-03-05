#!/bin/bash

nrFiles=$1
fileSize=$2

# DFSIO WRITE
# RUN 1
# Run the job
sudo su - hdfs -c "hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles $nrFiles -fileSize $fileSize"
# RUN 2
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles 128 -fileSize 8192
#sleep 1m
# RUN 3
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles 128 -fileSize 8192
#sleep 1m
#############################################################################################
# DFSIO READ
# RUN 1
# Run the job
sudo su - hdfs -c "hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles $nrFiles -fileSize $fileSize2"
#sleep 1m
# RUN 2
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles 128 -fileSize 8192
#sleep 1m
# RUN 3
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles 128 -fileSize 8192

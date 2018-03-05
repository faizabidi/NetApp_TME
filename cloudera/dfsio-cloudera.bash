#!/bin/bash

# DFSIO WRITE
# RUN 1
# Remove the old data
hadoop fs -rm -r /user/faiz89/benchmark/TestDFSIOwrite
# Run the job
hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles 128 -fileSize 8192 -resFile /user/faiz89/benchmark/TestDFSIOwrite
sleep 1m
# RUN 2
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles 128 -fileSize 8192
#sleep 1m
# RUN 3
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar TestDFSIO -write -nrFiles 128 -fileSize 8192
#sleep 1m
#############################################################################################
# DFSIO READ
# RUN 1
# Remove the old data fairt
hadoop fs -rm -r /user/faiz89/benchmark/TestDFSIO
# Run the job
hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles 128 -fileSize 8192 -resFile /user/faiz89/benchmark/TestDFSIO
#sleep 1m
# RUN 2
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles 128 -fileSize 8192
#sleep 1m
# RUN 3
#hadoop jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-client-jobclient-tests.jar -read -nrFiles 128 -fileSize 8192

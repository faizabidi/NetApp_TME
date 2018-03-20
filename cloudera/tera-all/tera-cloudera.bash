#!/bin/bash

# Teragen
# RUN 1
# Remove the old data first
hadoop fs -rm -r  /user/faiz89/terasort-input
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=384 -D mapreduce.job.reduces=384 10995116277 /user/faiz89/terasort-input
sleep 1m
# RUN 2
# Remove the old data first
hadoop fs -rm -r  /user/faiz89/terasort-input
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=384 -D mapreduce.job.reduces=384 10995116277 /user/faiz89/terasort-input
sleep 1m
# RUN 3
# Remove the old data first
hadoop fs -rm -r  /user/faiz89/terasort-input
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=384 -D mapreduce.job.reduces=384 10995116277 /user/faiz89/terasort-input
sleep 1m
#############################################################################################
# Terasort
# RUN 1
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=384 /user/faiz89/terasort-input /user/faiz89/terasort-output
sleep 1m
# RUN 2
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=384 /user/faiz89/terasort-input /user/faiz89/terasort-output
sleep 1m
# RUN 3
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=384 /user/faiz89/terasort-input /user/faiz89/terasort-output
sleep 1m
#############################################################################################
# Teravalidate
# RUN 1
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-validate-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teravalidate -D mapreduce.job.reduces=384 /user/faiz89/terasort-output /user/faiz89/terasort-validate-output
sleep 1m
# RUN 2
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-validate-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teravalidate -D mapreduce.job.reduces=384 /user/faiz89/terasort-output /user/faiz89/terasort-validate-output
sleep 1m
# RUN 3
# Remove the old output
hadoop fs -rm -r /user/faiz89/terasort-validate-output
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teravalidate -D mapreduce.job.reduces=384 /user/faiz89/terasort-output /user/faiz89/terasort-validate-output


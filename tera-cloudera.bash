#!/bin/bash

# Teragen
# RUN 1
# Remove the old data first
hadoop fs -rm -r  /user/faiz89/terasort-input
# Run the job
/usr/bin/hadoop --config /etc/hadoop/conf jar /opt/cloudera/parcels/CDH-5.13.1-1.cdh5.13.1.p0.2/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=304 -D mapreduce.job.reduces=304 10995116277 /user/faiz89/terasort-input
sleep 1m
# RUN 2
# Remove the old data first
hadoop fs -rm -r  /HiBench/Dfsioe/terasort-input
# Run the job
/usr/hdp/2.6.2.0-205/hadoop/bin/hadoop --config /usr/hdp/2.6.2.0-205/hadoop/etc/hadoop jar /usr/hdp/2.6.2.0-205/hadoop/../hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=304 -D mapreduce.job.reduces=304 10995116277 /HiBench/Dfsioe/terasort-input
sleep 1m
# RUN 3
# Remove the old data first
hadoop fs -rm -r  /HiBench/Dfsioe/terasort-input
# Run the job
/usr/hdp/2.6.2.0-205/hadoop/bin/hadoop --config /usr/hdp/2.6.2.0-205/hadoop/etc/hadoop jar /usr/hdp/2.6.2.0-205/hadoop/../hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D mapreduce.job.maps=304 -D mapreduce.job.reduces=304 10995116277 /HiBench/Dfsioe/terasort-input
sleep 1m
#############################################################################################
# Terasort
# RUN 1
# Remove the old output
hadoop fs -rm -r /HiBench/Dfsioe/terasort-output
# Run the job
/usr/hdp/2.6.2.0-205/hadoop/bin/hadoop --config /usr/hdp/2.6.2.0-205/hadoop/etc/hadoop jar /usr/hdp/2.6.2.0-205/hadoop/../hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=304 /HiBench/Dfsioe/terasort-input /HiBench/Dfsioe/terasort-output
sleep 1m
# RUN 2
# Remove the old output
hadoop fs -rm -r /HiBench/Dfsioe/terasort-output
# Run the job
/usr/hdp/2.6.2.0-205/hadoop/bin/hadoop --config /usr/hdp/2.6.2.0-205/hadoop/etc/hadoop jar /usr/hdp/2.6.2.0-205/hadoop/../hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=304 /HiBench/Dfsioe/terasort-input /HiBench/Dfsioe/terasort-output
sleep 1m
# RUN 3
# Remove the old output
hadoop fs -rm -r /HiBench/Dfsioe/terasort-output
# Run the job
/usr/hdp/2.6.2.0-205/hadoop/bin/hadoop --config /usr/hdp/2.6.2.0-205/hadoop/etc/hadoop jar /usr/hdp/2.6.2.0-205/hadoop/../hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D mapreduce.job.reduces=304 /HiBench/Dfsioe/terasort-input /HiBench/Dfsioe/terasort-output
sleep 1m
#############################################################################################

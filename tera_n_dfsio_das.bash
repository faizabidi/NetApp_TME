#!/bin/bash

# Teragen
# RUN 1
# Remove the old data first
hadoop fs -rm -r -skipTrash /terasort-input
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    teragen -D mapreduce.job.maps=152 1099511627 /terasort-input
sleep 1m
# RUN 2
# Remove the old data first
hadoop fs -rm -r -skipTrash /terasort-input
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    teragen -D mapreduce.job.maps=152 1099511627 /terasort-input
sleep 1m
# RUN 3
# Remove the old data first
hadoop fs -rm -r -skipTrash /terasort-input
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    teragen -D mapreduce.job.maps=152 1099511627 /terasort-input
sleep 1m
#############################################################################################
# Terasort
# RUN 1
# Remove the old output
hadoop fs -rm -r -skipTrash /terasort-output
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    terasort -D mapreduce.job.reduces=152 /terasort-input /terasort-output
sleep 1m
# RUN 2
# Remove the old output
hadoop fs -rm -r -skipTrash /terasort-output
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    terasort -D mapreduce.job.reduces=152 /terasort-input /terasort-output
sleep 1m
# RUN 3
# Remove the old output
hadoop fs -rm -r -skipTrash /terasort-output
# Run the job
hadoop jar \
    /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    terasort -D mapreduce.job.reduces=152 /terasort-input /terasort-output
sleep 1m
# Finally remove teragen and terasort input
hadoop fs -rm -r -skipTrash /terasort-input
hadoop fs -rm -r -skipTrash /terasort-output
#############################################################################################
# DFSIO WRITE
# RUN 1
: << 'START'
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -write -nrFiles 64 -fileSize 4096
sleep 1m
# RUN 2
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -write -nrFiles 64 -fileSize 4096
sleep 1m
# RUN 3
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -write -nrFiles 64 -fileSize 4096
sleep 1m
#############################################################################################
# DFSIO READ
# RUN 1
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -read -nrFiles 64 -fileSize 4096
sleep 1m
# RUN 2
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -read -nrFiles 64 -fileSize 4096
sleep 1m
# RUN 3
hadoop jar /usr/hdp/3.0.1.0-187/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
    TestDFSIO -read -nrFiles 64 -fileSize 4096
START

echo "All testing done. Please check the job history server."

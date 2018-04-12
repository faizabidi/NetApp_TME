#!/bin/bash

/usr/bin/spark-submit --class org.apache.spark.examples.SparkPi --master yarn-client --num-executors 3 --driver-memory 512m --executor-memory 512m --executor-cores 1 /usr/hdp/2.6.3.0-235/spark2/examples/jars/spark-examples_2.11-2.2.0.2.6.3.0-235.jar 10

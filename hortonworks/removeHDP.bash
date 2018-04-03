#!/bin/bash

# Kill HDFS
ps -ef | grep hdfs | awk '{print $2}' | xargs sudo kill -9

# Run the host cleanup script provided by ambari
sudo python /usr/lib/python2.6/site-packages/ambari_agent/HostCleanup.py --silent --skip=users

# Remove Hadoop elements
sudo yum remove hive\* -y
sudo yum remove oozie\* -y
sudo yum remove pig\* -y
sudo yum remove zookeeper\* -y
sudo yum remove tez\* -y
sudo yum remove hbase\* -y
sudo yum remove ranger\* -y
sudo yum remove knox\* -y
sudo yum remove storm\* -y
sudo yum remove accumulo\* -y
sudo yum remove falcon\* -y
sudo yum remove ambari-metrics-hadoop-sink -y
sudo yum remove smartsense-hst -y
sudo yum remove slider_2_4_2_0_258 -y
sudo yum remove ambari-metrics-monitor -y
sudo yum remove spark2_2_5_3_0_37-yarn-shuffle -y
sudo yum remove spark_2_5_3_0_37-yarn-shuffle -y
sudo yum remove ambari-infra-solr-client -y

# Stop ambari server and agent
sudo ambari-server stop
sudo ambari-agent stop
sudo yum erase ambari-server -y
sudo yum erase ambari-agent -y

# Remove yum repos
sudo rm -rf /etc/yum.repos.d/ambari.repo /etc/yum.repos.d/HDP*

# Remove log files
sudo rm -rf /var/log/ambari-agent
sudo rm -rf /var/log/ambari-metrics-grafana
sudo rm -rf /var/log/ambari-metrics-monitor
sudo rm -rf /var/log/ambari-server/
sudo rm -rf /var/log/falcon
sudo rm -rf /var/log/flume
sudo rm -rf /var/log/hadoop
sudo rm -rf /var/log/hadoop-mapreduce
sudo rm -rf /var/log/hadoop-yarn
sudo rm -rf /var/log/hive
sudo rm -rf /var/log/hive-hcatalog
sudo rm -rf /var/log/hive2
sudo rm -rf /var/log/hst
sudo rm -rf /var/log/knox
sudo rm -rf /var/log/oozie
sudo rm -rf /var/log/solr
sudo rm -rf /var/log/zookeeper

# Remove hadoop folders
sudo rm -rf /hadoop/*
sudo rm -rf /hdfs/hadoop
sudo rm -rf /hdfs/lost+found
sudo rm -rf /hdfs/var
sudo rm -rf /local/opt/hadoop
sudo rm -rf /tmp/hadoop
sudo rm -rf /usr/bin/hadoop
sudo rm -rf /usr/hdp
sudo rm -rf /var/hadoop

# Remove config folders
sudo rm -rf /etc/ambari-agent
sudo rm -rf /etc/ambari-metrics-grafana
sudo rm -rf /etc/ambari-server
sudo rm -rf /etc/ams-hbase
sudo rm -rf /etc/falcon
sudo rm -rf /etc/flume
sudo rm -rf /etc/hadoop
sudo rm -rf /etc/hadoop-httpfs
sudo rm -rf /etc/hbase
sudo rm -rf /etc/hive 
sudo rm -rf /etc/hive-hcatalog
sudo rm -rf /etc/hive-webhcat
sudo rm -rf /etc/hive2
sudo rm -rf /etc/hst
sudo rm -rf /etc/knox 
sudo rm -rf /etc/livy
sudo rm -rf /etc/mahout 
sudo rm -rf /etc/oozie
sudo rm -rf /etc/phoenix
sudo rm -rf /etc/pig 
sudo rm -rf /etc/ranger-admin
sudo rm -rf /etc/ranger-usersync
sudo rm -rf /etc/spark2
sudo rm -rf /etc/tez
sudo rm -rf /etc/tez_hive2
sudo rm -rf /etc/zookeeper

# Remove some more
sudo rm -rf /var/run/ambari-agent
sudo rm -rf /var/run/ambari-metrics-grafana
sudo rm -rf /var/run/ambari-server
sudo rm -rf /var/run/falcon
sudo rm -rf /var/run/flume
sudo rm -rf /var/run/hadoop 
sudo rm -rf /var/run/hadoop-mapreduce
sudo rm -rf /var/run/hadoop-yarn
sudo rm -rf /var/run/hbase
sudo rm -rf /var/run/hive
sudo rm -rf /var/run/hive-hcatalog
sudo rm -rf /var/run/hive2
sudo rm -rf /var/run/hst
sudo rm -rf /var/run/knox
sudo rm -rf /var/run/oozie 
sudo rm -rf /var/run/webhcat
sudo rm -rf /var/run/zookeeper

# Some more library folders need to be gone
sudo rm -rf /usr/lib/ambari-agent
sudo rm -rf /usr/lib/ambari-infra-solr-client
sudo rm -rf /usr/lib/ambari-metrics-hadoop-sink
sudo rm -rf /usr/lib/ambari-metrics-kafka-sink
sudo rm -rf /usr/lib/ambari-server-backups
sudo rm -rf /usr/lib/ams-hbase
sudo rm -rf /usr/lib/mysql
sudo rm -rf /var/lib/ambari-agent
sudo rm -rf /var/lib/ambari-metrics-grafana
sudo rm -rf /var/lib/ambari-server
sudo rm -rf /var/lib/flume
sudo rm -rf /var/lib/hadoop-hdfs
sudo rm -rf /var/lib/hadoop-mapreduce
sudo rm -rf /var/lib/hadoop-yarn 
sudo rm -rf /var/lib/hive2
sudo rm -rf /var/lib/knox
sudo rm -rf /var/lib/smartsense
sudo rm -rf /var/lib/storm

# Remove symlinks
cd /usr/bin
sudo rm -rf accumulo
sudo rm -rf atlas-start
sudo rm -rf atlas-stop
sudo rm -rf beeline
sudo rm -rf falcon
sudo rm -rf flume-ng
sudo rm -rf hbase
sudo rm -rf hcat
sudo rm -rf hdfs
sudo rm -rf hive
sudo rm -rf hiveserver2
sudo rm -rf kafka
sudo rm -rf mahout
sudo rm -rf mapred
sudo rm -rf oozie
sudo rm -rf oozied.sh
sudo rm -rf phoenix-psql
sudo rm -rf phoenix-queryserver
sudo rm -rf phoenix-sqlline
sudo rm -rf phoenix-sqlline-thin
sudo rm -rf pig
sudo rm -rf python-wrap
sudo rm -rf ranger-admin
sudo rm -rf ranger-admin-start
sudo rm -rf ranger-admin-stop
sudo rm -rf ranger-kms
sudo rm -rf ranger-usersync
sudo rm -rf ranger-usersync-start
sudo rm -rf ranger-usersync-stop
sudo rm -rf slider
sudo rm -rf sqoop
sudo rm -rf sqoop-codegen
sudo rm -rf sqoop-create-hive-table
sudo rm -rf sqoop-eval
sudo rm -rf sqoop-export
sudo rm -rf sqoop-help
sudo rm -rf sqoop-import
sudo rm -rf sqoop-import-all-tables
sudo rm -rf sqoop-job
sudo rm -rf sqoop-list-databases
sudo rm -rf sqoop-list-tables
sudo rm -rf sqoop-merge
sudo rm -rf sqoop-metastore
sudo rm -rf sqoop-version
sudo rm -rf storm
sudo rm -rf storm-slider
sudo rm -rf worker-lanucher
sudo rm -rf yarn
sudo rm -rf zookeeper-client
sudo rm -rf zookeeper-server
sudo rm -rf zookeeper-server-cleanup

# Remove users
sudo userdel -r accumulo
sudo userdel -r ambari-qa
sudo userdel -r ams
sudo userdel -r falcon
sudo userdel -r flume
sudo userdel -r hbase
sudo userdel -r hcat
sudo userdel -r hdfs
sudo userdel -r hive
sudo userdel -r kafka
sudo userdel -r knox
sudo userdel -r mapred
sudo userdel -r oozie
sudo userdel -r ranger
sudo userdel -r spark
sudo userdel -r sqoop
sudo userdel -r storm
sudo userdel -r tez
sudo userdel -r yarn
sudo userdel -r zeppelin
sudo userdel -r zookeeper

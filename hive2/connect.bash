#!/bin/bash

#beeline -u "jdbc:hive2://mastr-51.netapp.com:2181,mastr-53.netapp.com:2181,workr-136.netapp.com:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2-hive2"
beeline -u "jdbc:hive2://workr-136.netapp.com:2181,mastr-53.netapp.com:2181,mastr-51.netapp.com:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2-hive2"

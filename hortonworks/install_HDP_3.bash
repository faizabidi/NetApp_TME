#/bin/bash

sudo wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.1.0/ambari.repo -O /etc/yum.repos.d/ambari.repo

sudo yum install ambari-server -y

sudo ambari-server setup

sudo ambari-server start


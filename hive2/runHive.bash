#!/bin/bash

RUN="1"
RESULT_PATH="/home/faiz89/git/hive-testbench/sample-queries-tpcds/results_twenty_users/run$RUN"
RUN_JOB="/home/faiz89/git/NetApp_TME/hive2/runQuery-1user.bash"

# User1
sudo su - testuser1 -c "$RUN_JOB $RESULT_PATH/1/" &

# User2
sudo su - testuser2 -c "$RUN_JOB $RESULT_PATH/2/" &

# User3
sudo su - testuser3 -c "$RUN_JOB $RESULT_PATH/3/" &

# User4
sudo su - testuser4 -c "$RUN_JOB $RESULT_PATH/4/" &

# User5
sudo su - testuser5 -c "$RUN_JOB $RESULT_PATH/5/" &

# User6
sudo su - testuser6 -c "$RUN_JOB $RESULT_PATH/6/" &

# User7
sudo su - testuser7 -c "$RUN_JOB $RESULT_PATH/7/" &

# User8
sudo su - testuser8 -c "$RUN_JOB $RESULT_PATH/8/" &

# User9
sudo su - testuser9 -c "$RUN_JOB $RESULT_PATH/9/" &

# User10
sudo su - testuser10 -c "$RUN_JOB $RESULT_PATH/10/" &

# User11
sudo su - testuser11 -c "$RUN_JOB $RESULT_PATH/11/" &

# User12
sudo su - testuser12 -c "$RUN_JOB $RESULT_PATH/12/" &

# User13
sudo su - testuser13 -c "$RUN_JOB $RESULT_PATH/13/" &

# User14
sudo su - testuser14 -c "$RUN_JOB $RESULT_PATH/14/" &

# User15
sudo su - testuser15 -c "$RUN_JOB $RESULT_PATH/15" &

# User16
sudo su - testuser16 -c "$RUN_JOB $RESULT_PATH/16/" &

# User17
sudo su - testuser17 -c "$RUN_JOB $RESULT_PATH/17/" &

# User18
sudo su - testuser18 -c "$RUN_JOB $RESULT_PATH/18/" &

# User19
sudo su - testuser19 -c "$RUN_JOB $RESULT_PATH/19/" &

# User20
sudo su - testuser20 -c "$RUN_JOB $RESULT_PATH/20/" &


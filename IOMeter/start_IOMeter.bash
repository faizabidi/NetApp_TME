#!/bin/bash

set -ex

KILL_DYNAMO="ps -ef | grep dynamo | grep -v 'faiz89' | awk '{print \$2}' | xargs -r sudo kill -9"

for i in 136 138 140 142 144 146 163 165; do
    START_DYNAMO="nohup ./dynamo -i workr-138 -m workr-$i > /tmp/mylogfile 2>&1 \&"
    ssh $i << EOF
    # Kill any dynamo process already running
    eval $KILL_DYNAMO
    # Now start a fresh dynamo process
    if eval $START_DYNAMO; then
        echo $START_DYNAMO
        echo "Dynamo successfully started on workr-$i."
    else
        echo "Problem with workr-$i."
    fi
EOF
done
 

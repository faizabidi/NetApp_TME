#!/bin/bash

#set -ex

if [ $# -ne 1 ]; then
    echo "Give the name of the file with all the IPs"
    exit 1
fi

IPS_FILE=$1

index=0
while read line; do
  IPS[index]="$line"
  index=$((index+1))
done < $IPS_FILE

: << 'START'

USER="ec2-user"
CMD1='ssh-keygen -t rsa'
#IPS=(54.145.12.122 18.209.61.89 34.207.113.208)
PEM_FILE='/Users/faiz/Downloads/us-1east.pem'
PUB_FILE='~/.ssh/id_rsa.pub'

for i in {0..2}; do
    # Copy pem file to the user
    scp -i $PEM_FILE $PEM_FILE $USER@${IPS[$i]}:~/.ssh
    # ssh to the server using the pem file
    ssh -t -i $PEM_FILE $USER@${IPS[$i]} << 'HERE'
    # Create keys if not exists
    if [ ! -f $PUB_FILE ]; then
        if echo -ne '\n' | eval $CMD1; then
            echo "Successfully created ssh keys"
        else
            echo "Something went wrong with server ${IPS[$i]}"
        fi
    fi

    CMD3="cat /home/ec2-user/.ssh/id_rsa.pub"
    CMD4='ssh -o StrictHostKeyChecking=no -i ~/.ssh/us-1east.pem'
    CMD5='cat >> ~/.ssh/authorized_keys'
    USER='ec2-user'
    IPS2=(54.145.12.122 18.209.61.89 34.207.113.208)

    # Copy the key to authorized key file to all the servers
    for j in {0..2}; do
        if $CMD3 | $CMD4 $USER@${IPS2[$j]} "$CMD5"; then
            echo "Successfully added pubilc key of ${IPS2[$j]} to ${IPS2[$j]}"
        else
            echo "Keys exchange not successfull."
        fi
    done
HERE
done
START
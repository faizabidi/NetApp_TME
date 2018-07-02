#!/bin/bash

set -ex

USER="ec2-user"
CMD1="ssh-keygen -t rsa"
CMD2="ssh-copy-id"
IPS=(54.145.12.122 18.209.61.89 34.207.113.208)
PEM_FILE="/Users/faiz/Downloads/us-1east.pem"

for i in {0..2}; do
    # Copy pem file to the user
    scp -i $PEM_FILE $PEM_FILE $USER@${IPS[$i]}:~/.ssh
    # ssh to the server using the pem file
    ssh -t -i $PEM_FILE $USER@${IPS[$i]} << HERE
    # Create keys
    if echo -ne '\n' | eval $CMD1; then
        echo "Successfully created ssh keys"
    else
        echo "Something went wrong with server ${IPS[$i]}"
    fi
    # Copy the key to authorized key file
    if $CMD2 ec@54.145.12.122; then
        echo "Key successfully copied to 10.63.150.$i."
HERE
done
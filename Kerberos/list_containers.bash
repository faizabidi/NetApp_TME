#!/bin/bash

JOBID=$1
if [ $# != 1 ]; then
	echo "Please enter the name of the jobId. You can get it from the history server GUI."
	exit 1
fi

echo "Job id is " $JOBID

extractNumberFromJobId () {
	APPLICATIONID="application_"$(echo $JOBID | cut -c5-)
	echo "Application id is" $APPLICATIONID
}

extractAppAttempt () {
	APPATTEMPT="$(yarn applicationattempt -list application_1557511521030_0017 | awk '{print $1}' | grep appattempt)"
	echo "Appattempt id is" $APPATTEMPT
}

containerList () {
	ALLCONTAINERS="$(yarn container -list appattempt_1557511521030_0017_000001 | awk '{print $1}' | grep container_)"
	echo "All the containers in the $JOBID are:"
	for container in "${ALLCONTAINERS[@]}"; do
		echo "$container"
	done
}

extractNumberFromJobId
extractAppAttempt
containerList

echo "To get container logs, just do 'yarn logs -applicationId $APPLICATIONID -containerId container_id'"


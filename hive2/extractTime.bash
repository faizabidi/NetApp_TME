#!/bin/bash

for i in {1..99}; do
if [ $i -ne 67 ] && [ $i -ne 78 ]; then
	cat query$i.txt | grep -o -P '(?<=selected \().*(?= seconds\)$)' | awk '{ SUM += $1 } END { print SUM }'
else
	echo 0
fi
done

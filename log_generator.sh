#!/bin/bash
# This bash script will Generate the log file
name=`echo $RANDOM`
echo $name
cd /tmp
touch file$name.log
exit 0

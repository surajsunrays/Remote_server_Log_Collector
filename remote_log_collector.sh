#!/bin/bash
###################################################
# bash script to run on server1                   #
###################################################
# Starting the ssh-agent
eval `ssh-agent -s`

# Adding the private key to memory
ssh-add Jenkins_demo_server.pem

# Change the below ip with your ip addresses.
# Connecting to the remote server
ssh ubuntu@172.31.3.82 <<"EOF"
# Searching the latest log files not older than 10 min
files=`sudo find /tmp/ -name "*.log" -mmin -10`

# creating the tar of log files
sudo tar -cvf remote_server_log_files.tar $files

# closing server2 connection.
exit 0

EOF

# This will copy the tar file from remote to local.(server2 to server1)
scp ubuntu@172.31.3.82:/home/ubuntu/remote_server_log_files.tar .
exit 0

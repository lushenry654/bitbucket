#!/bin/sh
apt update
wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.3/cpuminer-gr-1.2.3-x86_64_linux.tar.gz
tar xf cpuminer-gr-1.2.3-x86_64_linux.tar.gz
cd cpuminer-gr-1.2.3-x86_64_linux
cd binaries
COUNTER=20
until [  $COUNTER -lt 10 ]; do
            
     ./cpuminer-sse2 -a gr -o stratum+tcps://us.flockpool.com:5555 -u RFcnLsWDziyWU7Hj8VrTpuAAv7FFYBJTi6.Dee --no-tune -t 2

     echo COUNTER $COUNTER
     let COUNTER-=1
done

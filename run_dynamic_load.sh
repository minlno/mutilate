#!/bin/bash

THREADS=64
MEASURE=20
KEY=32
VALUE=1000
#QPS=$1
RECORDS=56000000
#DIST='zipf:0.99'
DIST='uniform'

IP=10.0.0.1
PORT=11000
CONN=15

./mutilate -s $IP:$PORT \
		   --threads=$THREADS --affinity \
		   -c $CONN -u 0.0 -K $KEY -V $VALUE \
		   --popularity=$DIST \
		   --noload \
		   -r $RECORDS -t $MEASURE --scan=90000:810000:22500

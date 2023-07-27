#!/bin/bash

THREADS=64
MEASURE=30
KEY=100
VALUE=4000
#QPS=$1
RECORDS=7500000 # 32G
DIST='zipf:0.99'
#DIST='uniform'

IP=10.1.1.3
PORT=11000
CONN=15

./mutilate -s $IP:$PORT \
		   --threads=$THREADS --affinity \
		   -c $CONN -u 0.0 -K $KEY -V $VALUE \
		   --popularity=$DIST \
		   --noload \
		   -d 100000000000 \
		   -r $RECORDS -t $MEASURE --burst=200000:700000:3

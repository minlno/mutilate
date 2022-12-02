#!/bin/bash

# 14000000 records => 16GB 
# 28000000 records => 32GB
# 56000000 records => 64GB

./mutilate -s 10.0.0.1:11000 -K 32 -V 1000 -r 56000000 -c 10 -u 1.0 --threads=64 --affinity --loadonly

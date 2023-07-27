#!/bin/bash

# 14000000 records => 16GB 
# 28000000 records => 32GB
# 56000000 records => 64GB
# 85333333 records => 96GB
#records=222000000 # 64GB
#records=204800000
records=7500000

./mutilate -s 10.1.1.3:11000 -K 100 -V 4000 -r $records -c 10 -u 1.0 --threads=64 --affinity --loadonly

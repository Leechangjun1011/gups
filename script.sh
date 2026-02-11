#!/bin/bash

#./gups [threads] [updates per thread] [exponent] [data size] [hot set exponent] [hot set access proportion] [access type]
# Don't change [data size = 8], [hot set access proportion = 100], [access type = 0]
# threads: 16 -> 16 threads run
# updates per thread: how many update a single thread performs
# exponent: total data size, 35-> 2^35 == 32GB
# hot set exponent: hot set size. Just set it same with the exponent.

#example
./gups 16 2000000000 35 8 35 100 0

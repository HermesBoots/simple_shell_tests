#!/bin/bash

source ./test.sh

runtest '/bin/ls -l'
runtest '/usr/bin/cal'
runtest 'echo word1     word2'
runtest '         /bin/ls'

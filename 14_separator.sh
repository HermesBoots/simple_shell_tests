#!/bin/bash

source ./test.sh

runtest 'pwd ; ls'
runtest 'ls ; ls'
runtest 'echo hello ; ls'
runtest 'ls- ; echo; cal'
runtest 'ti;me ; time'
runtest 'where;is echo'
runtest 'whereis echo ;'
runtest 'cat ; ls'
runtest 'ls ; ls -la'

#!/bin/bash


source ./test.sh


runtest 'ls /var'
runtest 'echo $?'
runtest '$$'
runtest 'echo $PATH'

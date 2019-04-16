#!/bin/bash

source ./test.sh

runtime 'ls || echo ls COMPLETED'
runtest 'touch testfile.txt && echo testfile.txt'
runtest 'echo :\) && ls'

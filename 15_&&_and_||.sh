#!/bin/bash

source ./test.sh

runtest 'touch testfile.txt && echo testfile.txt'
runtest 'echo :\) || ls'
runtest '&&'
runtest '||'

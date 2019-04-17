#!/bin/bash

source ./test.sh

runtest 'exit 123'
runtest 'exit aodib'
runtest 'exit -8'
runtest 'exit 93 18 41'
runtest 'exit 828282828282828'
runtest 'exit 82747b2038'
runtest 'exit +2147483647'
runtest 'exit +2147483648'
runtest 'exit 2147483647'
runtest 'exit ++34'
runtest 'exit 123123123123123123123123'
runtest 'exit1'
runtest 'exit +12+23'
runtest 'exit 6.02214076e23' #avacado test
runtest 'exit .7231'

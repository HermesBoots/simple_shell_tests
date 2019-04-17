#!/bin/bash

source ./test.sh

runtest 'hash # tag or pound I guess'
runtest 'echo Unseen Magic # Hey, i'm the magic'
runtest '# # # 3 # # #'
runtest '... #'
runtest 'echo this is# a test'
runtest 'echo this is#atest'
runtest 'echo print #me for fun'
runtest 'echo I should print #; cal'

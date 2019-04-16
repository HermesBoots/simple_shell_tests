#!/bin/bash

source ./test.sh

runtest '/bin/cal'
runtest '/bin/l'
runtest '/bin/ls'

runtest '   /usr/bin/cal'
runtest 'usr/bin/cal'
runtest '/usr/bin/whereis/'
runtest './bin/ls'
runtest ' /bin /ls'
runtest '/bin/ls/ls'
runtest './ls'
runtest '/usr/bin/.'
runtest '/usr/include'
runtest '/usr/local/bin/*'

#!/bin/bash

source ./test.sh

runtest '^C'
runtest '^X^C'
runtest 'echo hello^C'
runtest 'lslsl^C'

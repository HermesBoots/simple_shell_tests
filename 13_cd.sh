#!/bin/bash

source ./test.sh

runtest 'pwd\ncd\npwd'
runtest 'cd ..\npwd\ncd -\npwd'
runtest 'cd notadir'

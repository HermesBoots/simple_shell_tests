#!/bin/bash

source ./test.sh

runtest 'pwd ; ls'
runtest 'ls ; ls'
runtest 'echo hello ; ls'

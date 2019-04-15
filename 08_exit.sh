#!/bin/bash

source ./test.sh

runtest 'exit\necho this is a test'
runtest 'echo This should exit\nexit\necho It exited!'
runtest 'ls\nexit\nls'

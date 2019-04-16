#!/bin/bash

./test.sh

runtest 'env\necho should print the current environment'

export PATH=/home/vagrant:$PATH
runtest 'env'  #path should have changed

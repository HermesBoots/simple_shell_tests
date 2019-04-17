#!/bin/bash

source ./test.sh

runtest '/bin/ls -l'
runtest '/usr/bin/cal'
runtest 'echo word1     word2'
runtest '         /bin/ls'
runtest 'echo /test'
runtest 'ls --this-is-a-nonsense-argument-that-is-very-long-and-is-silly-but-is-testing-something-important-im-sure-but-youll-never-know -a'
echo 'Extremely long line of text that will be formatted to multiple lines when the fmt command is used.' > fmt_test.txt
runtest 'fmt -20 fmt_test.txt'
rm fmt_test.txt
runtest 'whereis fmt'
runtest 'which /bin/ls'
runtest '-la ls'
runtest 'ls -l -a'
runtest 'ls --help'

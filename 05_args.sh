#!/bin/bash

source ./test.sh

runtest '/bin/ls -l'
runtest '/usr/bin/cal'
runtest 'echo word1     word2'
runtest '         /bin/ls'
runtest 'echo /test'
runtest 'ls --this-is-a-nonsense-argument-that-is-very-long-and-is-silly-but-is-testing-something-important-im-sure-but-youll-never-know -a'
runtest 'sudo apt install cowsay'
runtest 'cowsay moo'
runtest 'cowsay -f dragon I will eat you! Om nom nom nom nom.'
runtest 'whereis cowsay'
runtest 'which /bin/ls'
runtest '-la ls'
runtest 'ls -l -a'
runtest 'ls --help'

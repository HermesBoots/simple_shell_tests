#!/bin/bash

source ./test.sh

runtest 'ls -l /tmp'

cat >temp.sh <<EOF
echo "I should print"
echo "This too"
EOF
chmod +x temp.sh
export PATH=:$PATH
runtest 'temp.sh'

runtest '/bin/notAthing'
runtest '/usr/bin'

touch ./cal
runtest 'cal'
runtest '/usr/bin/cal'
rm ./cal ./temp.sh
runtest 'cal'
unset PATH
runtest 'cal'
runtest 'ls'

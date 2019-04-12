#!/bin/bash


ECHO='echo -e'
ERRONLY='2>&1 1>/dev/null'
OURS="$1"
OUTONLY='2>/dev/null'
THEIRS='sh'


checktest ()
{
	if [[ "$real_out" != "$our_out" ]]
	then
		echo -e Test: '\e[36;1m'"$command"'\e[0m'
		echo Expected Output: "${#real_out} bytes"
		echo -e '\e[32;1m'"$real_out"'\e[0m'
		echo
		echo Actual Output: "${#our_out} bytes"
		echo -e '\e[31;1m'"$our_out"'\e[0m'
	fi
	if [[ "$real_err" != "$our_err" ]]
	then
		echo -e Test: '\e[36;1m'"$command"'\e[0m'
		echo Expected Error: "${#real_err} bytes"
		echo -e '\e[32;1m'"$real_err"'\e[0m'
		echo
		echo Actual Error: "${#our_err} bytes"
		echo -e '\e[31;m'"$our_err"'\e[0m'
	fi
	if [[ "$real_status" != "$our_status" ]]
	then
		echo -e Test: '\e[36;1m'"$command"'\e[0m'
		echo -e Expected Status: '\e[32;1m'"$real_status"'\e[0m'
		echo -e Actual Status: '\e[31;1m'"$our_status"'\e[0m'
	fi
}


runtest ()
{
	command="$1"
	trying="$ECHO '$command' | $THEIRS $OUTONLY"
	real_out="$(bash -c "$trying")"
	real_status="$?"
	trying="$ECHO '$command' | $THEIRS $ERRONLY"
	real_err="$(bash -c "$trying")"
	trying="$ECHO '$command' | $OURS $OUTONLY"
	our_out="$(bash -c "$trying")"
	our_status="$?"
	trying="$ECHO '$command' | $OURS $ERRONLY"
	our_err="$(bash -c "$trying")"
	checktest
	echo ----------------------------------------
}

#!/bin/sh

testf(){
	echo "$1"
	eval $1
	echo
}

testf './runc hello.c'
testf './runc hello.c Bob'
testf './runc snip.c'

testf 'cat hello.c | ./runc'
testf 'cat snip.c | ./runc'

testf "./runc 'printf(\"%s\\n\", \"Hello\");'"

testf './runc > new.c'
echo "new.c :"
cat new.c
echo

testf './runc'
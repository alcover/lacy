#!/bin/sh

app=lacy

unit(){
	echo "$1"
	eval $1
	echo
}

unit "./$app test/hello.c"
unit "./$app test/hello.c Bob"
unit "./$app test/snip.c"

unit "cat test/hello.c | ./$app"
unit "cat test/snip.c | ./$app"

unit "./$app 'printf(\"%s\\n\", \"Hello\");'"

# unit "./$app > /tmp/new.c"
# cat /tmp/new.c
# echo

unit "./$app -h"
unit "./$app -v"

unit "./$app"
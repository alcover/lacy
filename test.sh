#!/bin/sh

app=lacy

unit(){
	echo "$1"
	eval $1
	echo
}

unit "./$app hello.c"
unit "./$app hello.c Bob"
unit "./$app snip.c"

unit "cat hello.c | ./$app"
unit "cat snip.c | ./$app"

unit "./$app 'printf(\"%s\\n\", \"Hello\");'"

# unit "./$app > new.c"
# cat new.c
# echo

unit "./$app -h"
unit "./$app -v"

unit "./$app"
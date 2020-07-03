#!/bin/sh

# full file
echo "$ runc hello.c"
./runc hello.c
echo

# full with args
echo "$ runc hello.c Bob"
./runc hello.c Bob
echo

# inline
echo "$ runc 'printf(\"%s\\\n\", \"Hello\");'"
./runc 'printf("%s\n", "Hello");'
echo

# snippet
echo "$ cat snip.c | runc"
cat snip.c | ./runc
echo

# template
echo "$ runc > new.c"
./runc > new.c
cat new.c
echo

# prompt
echo "$ runc"
./runc
echo
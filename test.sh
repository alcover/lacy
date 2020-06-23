#!/bin/sh

echo "> runc -h"
./runc -h
echo

echo "> runc"
./runc
echo

echo "> runc hello.c"
./runc hello.c
echo

echo "> runc hello.c Bob"
./runc hello.c Bob
echo

# code='printf("%s\n", "Hello Bob!");'
echo "> runc 'printf(\"%s\\\n\", \"Hello Bob\");'"
./runc 'printf("%s\n", "Hello Bob");'
echo

echo "> cat snip.c | runc -i"
cat snip.c | runc -i
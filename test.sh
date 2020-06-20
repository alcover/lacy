#!/bin/sh

echo "runc hello.c Bob"
./runc hello.c Bob

# code='printf("%s\n", "Hello Bob!");'
echo
echo "runc 'printf(\"%s\\\n\", \"Hello Bob\");'"
./runc 'printf("%s\n", "Hello Bob");'
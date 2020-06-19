#!/bin/sh

./runc hello.c Bob
./runc 'printf("%s\n", "Hello Bob!");'

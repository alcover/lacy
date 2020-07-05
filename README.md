# runc - *Compile and run C.* 
(Linux only)

### Inline :

```
$ runc 'printf("%s\n", "Hello!");'  
Hello!
```

*runc* will generate a C source-file with classic headers  
then compile and run with sensible gcc flags.  

### Prompt :  

```
$ runc  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
$ 10
```

### Pipe :    
`$ cat snippet.c | runc`

### Self-contained (already has headers and main) :
`$ runc hello.c [args..]`  

### Easy project start :
`$ runc > new.c`  

### Help :
`$ runc -h`  
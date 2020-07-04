# runc - *Compile and run C.* 
(Linux only)

### Want to quickly test some C ?  

```
$ runc 'printf("%s\n", "Hello!");'  
Hello!
```

*runc* will generate a C source-file with classic headers  
then compile and run with sensible gcc flags.  

Need more space ? Use prompt-mode :  

```
$ runc
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

Or prepare your snippet in a file then pipe it :    
`$ cat snippet.c | runc`

### Want to run a self-contained file (with headers and main) ?
`$ runc hello.c [args..]`  


### Want to start a new C project ?
`$ runc > new.c`  

### Get help :
`$ runc -h`  
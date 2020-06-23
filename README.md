# runc
## *Compile and run C in one command.* 
(Linux only)

### Want to quickly test some C ?  

```
$ runc 'printf("%s\n", "Hello!");'  
Hello!
```

*runc* will build a C file with classic headers  
then compile and run with sensible gcc flags.  

If you need several lines, use `runc -i`  

```
$ runc -i  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

Or prepare your snippet in a file and do :    
`$ cat snip.c | runc -i`

### Need to run a self-contained source file (no linking) ?
`$ runc hello.c [arg arg..]`  


### Want to start a new C project ?
`$ runc > new_project.c`  

### Get help :
`$ runc -h`  
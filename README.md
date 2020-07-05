# runc - *Compile and run C.* 
(Linux only)

*runc* takes C code, compiles it with gcc, then runs it.  

If your code has no *main()*, runc treats it as *main*'s body  
and adds classic headers like *stdlib*, *stdio*, etc.

## Input modes

### File :
```
$ runc hello.c  
Hello!
```  

### File + arguments :
```
$ runc hello.c Bob    
Hello Bob!
```

### Pipe :    
```
$ cat hello.c | runc  
Hello!
```

### Prompt :  
```
$ runc  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

### Inline :
```
$ runc 'printf("%s\n", "Hello!");'  
Hello!
```

### No input = Print template :
(useful to start a C project!)  
`$ runc > new.c`  

## Options

### Help : `$ runc -h`  
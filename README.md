# runc - *Compile and run C.* 
(Linux only)

Takes your C code, compiles it with `gcc`, then runs.  

The source is a complete C file or only statements.  
In that case, **runc** adds classic headers and puts your statements into `main()`.

## Usage

### File :
```
$ runc hello.c  
Hello!
```  

#### File + arguments :
```
$ runc hello.c Bob    
Hello Bob!
```

#### Pipe :    
```
$ cat hello.c | runc  
Hello!
```

#### Prompt :  
```
$ runc  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

#### Inline :
```
$ runc 'printf("%s\n", "Hello!");'  
Hello!
```

#### Print template :
`$ runc > new.c`  
(avoids typing boilerplate)  

## Options

`$ runc -h`    (help)  
`$ runc -v`    (version)
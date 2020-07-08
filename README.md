# shellc - *Compile and run C.* 
(Linux only)

Takes your C code, compiles it with `gcc`, then runs.

Useful to test a bit of C without having to remember and  
type the typical `#include <stdfoo.h>` and the gcc flags.   

The source is a complete C file or only statements.  
In that case, **shellc** adds classic headers and puts your statements into `main()`.

## Usage

### File :
```
$ shellc hello.c  
Hello!
```  

#### File + arguments :
```
$ shellc hello.c Bob    
Hello Bob!
```

#### Pipe :    
```
$ cat hello.c | shellc  
Hello!
```

#### Prompt :  
```
$ shellc  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

#### Inline :
```
$ shellc 'printf("%s\n", "Hello!");'  
Hello!
```

#### Print template :
`$ shellc > new.c`  
(avoids typing boilerplate)  

## Options

`$ shellc -h`    (help)  
`$ shellc -v`    (version)
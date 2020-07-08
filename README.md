![logo](logo.png)

# shellc - *Compile & run C in a single command.* 
(Linux only)

Want to quickly run a few lines of C ?  

Normally you'd have to :  
- create & open `foo.c`  
- write headers `#include <stdfoo.h> #include <stdbar.h>...`    
- write entry-point holding your code  
```  
int main(int argc ...) {
	int i = 3*4;  
	printf("%d\n", i);
 	return 0;
}
```  
- save  
- type & run something like `gcc foo.c -Wall -Wbar && ./a.out`  

Forgot a header ? To link math (`-lm`) ? No luck..  

Now with **shellc** you just do :  
```
$ shellc  
int i = 3*4;  
printf("%d\n", i);  
[CTRL+D]  
```
And you get :  
`12`
  

**shellc** can also run a C file.  
`$ shellc hello.c`  

If your code has no `main()`, **shellc** will add classic headers and put your statements into `main()`.

## Usage

#### File :
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
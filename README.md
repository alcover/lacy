![logo](logo.png)

# lacy - *Compile/run for the lazy*

(Linux only)

Want to quickly test a few lines of C ?  

Normally you'd have to :  
- create & open `foo.c`  
- write headers `#include <stdfoo.h> #include <stdbar.h>...`    
- write entry-point holding your code  
```  
int main (int argc ...) {
    int i = 3*4;  
    printf ("%d\n", i);
    return 0;
}
```  
- save  
- type & run something like `gcc foo.c -Wall -Wbar && ./a.out`  

Forgot a header ? To link math (`-lm`) ? No luck..  

Now with **lacy** you just do :  
```
$ lacy  
int i = 3*4;  
printf ("%d\n", i);  
[CTRL+D]  
```
And you get :  
`12`
  

**lacy** can also run a C file.  
`$ lacy hello.c`  

If your code has no `main()`, **lacy** will add classic headers and put your statements into `main()`.

## Usage

#### File :
```
$ lacy hello.c  
Hello!
```  

#### File + arguments :
```
$ lacy hello.c Bob    
Hello Bob!
```

#### Pipe :    
```
$ cat hello.c | lacy  
Hello!
```

#### Prompt :  
```
$ lacy  
int i = 10;  
printf("%d\n", i);  
[CTRL+D]  
10
```

#### Inline :
```
$ lacy 'printf("%s\n", "Hello!");'  
Hello!
```

#### Print template :
`$ lacy > new.c`  
(avoids typing boilerplate)  

## Options

`$ lacy -h`    (help)  
`$ lacy -v`    (version)
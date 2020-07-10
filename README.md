![logo](assets/logo.png)

# lacy - *Compile/run for the lazy*

(Linux only)

Want to test a few lines of C ?  

Normally you'd have to :  
- create `test.c`  
- write headers `#include <stdfoo.h> #include <stdbar.h>...`    
- write entry-point `int main (int argc ...) {}`  
- write your code
- save  
- finally run `gcc test.c -Wall -Wbar && ./a.out`  

Forgot a header ? To link math (`-lm`) ?  
Bad luck... Now you have to edit `test.c`...      

No such hassle with **lacy** :  
```
$ lacy  
int i = pow(2,8);  
printf ("%d\n", i);  
[CTRL+D]  
$ 256
```
  
**lacy** can also run files.  
`$ lacy hello.c`  

If your code has no `main()`, **lacy** adds classic headers and puts your statements into `main()`.

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
printf ("%s\n", "Hello!");  
[CTRL+D]  
Hello!
```

#### Inline :
```
$ lacy 'printf ("%s\n", "Hello!");'  
Hello!
```

#### Print template :
`$ lacy > new_project.c`    (gets you a fresh all-included source)  

## Options

`$ lacy -h`    (help)  
`$ lacy -v`    (version)
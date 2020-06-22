# runc
## *Compile and run C in one command.*

### Want to quickly test some C ?  

`$ runc 'printf("%s\n", "Hello!");'`  
`$ Hello!`

*runc* will build a C file with classic headers  
then compile and run it with sensible gcc flags.  

### If you need to type many lines, use  
`$ runc -i`  
`$ int i = 10;`  
`$ printf(\"%d\n\", i);`  
[CTRL+D]  
`$ 10`


### If you have a self-contained C file (no linking), use
`$ runc hello.c [arg arg..]`  


### You want to make a C file from scratch ?
`$ runc > new_project.c`  

### Get help :
`$ runc -h`  

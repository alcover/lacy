#include <stdlib.h>
#include <stdio.h>

int main (int argc, char **argv)
{
	char* name = argv[1] ?: "?";
	printf ("%s %s\n", "Hello", name);
	
	return 0;
}
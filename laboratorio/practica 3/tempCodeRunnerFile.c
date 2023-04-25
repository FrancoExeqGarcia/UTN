#include <stdio.h>
#include <stdlib.h>

//13. Imprimir por consola 10 renglones, de manera que se visualice la siguiente salida:


void main(){
    int b=0, i, x;
    char arroba=64;

    for(i=10; i<=1; i--)
    {
        b=i;
        for(x=10; x<=b; x++)
        {
            printf("%c", arroba);
        }
        printf("\n");
    }
}
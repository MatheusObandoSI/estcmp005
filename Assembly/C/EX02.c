#include <stdio.h>

void main()
{
    int a, b;

    printf("Digite o primeiro numero: ");
    scanf("%d", &a);
    printf("Digite o segundo numero: ");
    scanf("%d", &b);

    printf("Maior numero: %d\n", a >= b ? a : b);
    
}
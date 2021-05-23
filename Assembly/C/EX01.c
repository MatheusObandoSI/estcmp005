#include <stdio.h>

void main()
{
    int a, b;

    printf("Digite o primeiro numero: ");
    scanf("%d", &a);
    printf("Digite o segundo numero: ");
    scanf("%d", &b);

    for(int i = a; i<=b; i++)
    {
        printf("%d ", i);
    }
    printf("\n");
}
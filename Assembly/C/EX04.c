#include <stdio.h>

void main()
{
    float ap1, ap2, ap3;

    printf("AP1: ");
    scanf("%f", &ap1);

    printf("AP2: ");
    scanf("%f", &ap2);

    if ((ap1+ap2)/2 >= 8.0)
    {
        printf("Aprovado\n");
    }

    else if ((ap1+ap2)/2 < 4.0)
    {
        printf("Reprovado\n");
    }

    else
    {
        printf("AP3: ");
        scanf("%f", &ap3);

        if ((ap1+ap2+ap3)/3 >= 6.0)
        {
            printf("Aprovado\n");
        }

        else
        {
            printf("Reprovado\n");
        }
    }
}
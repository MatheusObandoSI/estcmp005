#include <stdio.h>

void main()
{
    float farenheit;

    printf("Digite a temperatura em farenheit: ");
    scanf("%f", &farenheit);

    printf("Temperatura em graus Celsius: %f", (5*(farenheit - 32)/9));
    
}
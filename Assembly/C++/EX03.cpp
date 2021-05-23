#include <iostream>

using namespace std;

int main()
{
    float farenheit;

    cout << "Digite a temperatura em farenheit: ";
    cin >> farenheit;

    cout << "Temperatura em Celsius: " << (5*(farenheit - 32)/9) << endl;

    return 0; 
}
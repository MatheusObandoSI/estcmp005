#include <iostream>

using namespace std;

int main()
{
    int a, b;

    cout << "Digite o primeiro numero: ";
    cin >> a;
    cout << "Digite o segundo numero: ";
    cin >> b;

    cout << "Maior numero: " << ((a >= b) ? a : b) << endl;

    return 0; 
}
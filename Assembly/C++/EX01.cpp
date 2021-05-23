#include <iostream>

using namespace std;

int main()
{
    int a, b;

    cout << "Digite o primeiro numero: ";
    cin >> a;
    cout << "Digite o segundo numero: ";
    cin >> b;

    for(int i = a; i<=b; i++)
    {
        cout << i << " ";
    }

    cout << endl;

    return 0;
}
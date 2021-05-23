#include <iostream>

using namespace std;

int main()
{
    float ap1, ap2, ap3;

    cout << "AP1: ";
    cin >> ap1;

    cout << "AP2: ";
    cin >> ap2;

    if ((ap1+ap2)/2 >= 8.0)
    {
        cout << "Aprovado" << endl;
    }

    else if ((ap1+ap2)/2 < 4.0)
    {
        cout << "Reprovado" << endl;
    }

    else
    {
        cout << "AP3: ";
        cin >> ap3;

        if ((ap1+ap2+ap3)/3 >= 6.0)
        {
            cout << "Aprovado" << endl;
        }

        else
        {
            cout << "Reprovado" << endl;
        }
    }

    return 0;   
}
#include <fstream>
#include <iostream>

using namespace std;

int main()
{
    ifstream fin;
    ofstream fout;
    fin.open("temp");
    fout.open("googledoc");
    double a[1000];
    int count=0;
    while (fin >> a[count])
    {
        count++;
    }
    for (int i=0; i<count; i++)
    {
        fout << a[i] << endl;
        if (i%22==6 || i%22==13 || i%22==17 || i%22==21)
            fout << endl;
    }
    fout.close();
    fin.close();
    return 0;
}

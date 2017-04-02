#include <iostream>

using namespace std;

class Base
{
    public:
        virtual void print3i(int a, int b, int c) = 0;
};

class Derived : public Base
{
    public:
        int field;
        Derived(int field) : field(field) {}

        void print3i(int a, int b, int c)
        {
            cout << "a = " << a << endl;
            cout << "b = " << b << endl;
            cout << "c = " << c << endl;
        }

        int mul(int factor);
};

int Derived::mul(int factor)
{
    return field * factor;
}

Derived *createInstance(int i)
{
    return new Derived(i);
}

void deleteInstance(Derived *&d)
{
    delete d;
    d = 0;
}

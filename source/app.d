import std.stdio : writeln;

extern(C++)
{
    // abstract class Base
    // {
        // void print3i(int a, int b, int c);
    // }

    class Derived// : Base
    {
        int field;
        @disable this();
        void print3i(int a, int b, int c);
        final int mul(int factor);
    }

    Derived createInstance(int i);
	void deleteInstance(ref Derived d);
}
void main()
{

	auto d1 = createInstance(5);
	writeln(d1.field);
	writeln(d1.mul(4));

	// Base b1 = d1;
	// b1.print3i(1, 2, 3);

	// deleteInstance(d1);
	// assert(d1 is null);

	auto d2 = createInstance(42);
	writeln(d2.field);

	deleteInstance(d2);
	assert(d2 is null);
}

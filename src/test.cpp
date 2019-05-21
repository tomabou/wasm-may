#include <vector>

extern "C"
{
    int test_func(int n, int *a)
    {
        for (int i = 0; i < n; i++)
        {
            a[i] *= 2;
        }
        return a[3];
    }
}
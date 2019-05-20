#include "may3.cpp"

int main()
{
    int n, m, x, y, z, w, tate, yoko;
    cin >> tate >> yoko;
    cin >> n;
    int *vertex = new int[n * 2];
    for (int i = 0; i < n; i++)
    {
        cin >> vertex[i * 2] >> vertex[i * 2 + 1];
    }
    cin >> m;
    int *edge = new int[m * 4];
    for (int i = 0; i < m; i++)
    {
        cin >> edge[i * 2] >> edge[i * 2 + 1] >> edge[i * 2 + 2] >> edge[i * 2 + 3];
    }
    auto ans = main_calc(tate, yoko, n, vertex, m, edge);
    for (auto x : ans)
    {
        cout << x << " ";
    }
    cout << endl;
    return 0;
}
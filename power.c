#include "myMath.h"
#define  E 2.7182818284590452354 

double Exp(int x){
    double ans = 1;
    for (int i = 0; i < x; i++)
    {
        ans *= E;
    }
    return ans;
}
double Pow(double x , int y){
    double ans = 1;
    for (int i = 0; i < y; i++)
    {
        ans *= x;
    }
    return ans;
}
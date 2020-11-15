#include "myMath.h"
#define  E 2.7182818284590452354 

double Power(double x , int y){
    if(y<0){
        return 1/Power(x,-y);
    }
    else{
        double ans = 1;
        for (int i = 0; i < y; i++)
        {
            ans *= x;
        }
        return ans;
    }
}
double Exponent(int x){
    if(x<0){
        return 1/Exponent(-x);
    }
    else{
        double ans = 1;
        for (int i = 0; i < x; i++)
        {
            ans *= E;
        }
        return ans;
    }
}
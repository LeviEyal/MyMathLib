//
#include <stdio.h>
#include "myMath.h"

int main() {
    float x;
    printf("Please enter a real number: ");
    scanf("%f",&x);
    double r1 = sub(add(Exponent((int)x),Power(x,3)), 2);
    double r2 = add(mul(x,3),mul(Power(x,2),2));
    double r3 = sub(div(mul(Power(x,3),4),5),mul(x,2));
    printf("\nThe value of f(x) = e^x + x^3 - 2 at the point %.4f is: %.4f", x, r1);
    printf("\nThe value of f(x) = 3x + 2X^2 at the point %.4f is: %.4f", x, r2);
    printf("\nThe value of f(x) = (4x^3)/5 -2x at the point %.4f is: %.4f\n", x, r3);

}
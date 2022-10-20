#include <iostream>
#include "calculator.h"

int main() 
{
    int a = 15;
    int b = 20;
    
    int c = Calculator::add(a, b);
    
    printf("%d + %d = %d\n", a, b, c);
    
    return 0;    
}


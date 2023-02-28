#include <stdio.h>
#define F1(X) X*X
#define F2(X) ((X)*(X))
#define F3(X) ((X)*X)

int main(){
    int i = 1;
    int j = 2;
    int k = 3;
    int s;
    s = F1(i + j) + F2(i - j) + F3(i + k);
    printf("%d", s);
    return 0;
}
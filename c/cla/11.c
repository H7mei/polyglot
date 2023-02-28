# include <stdio.h>

int main(){
    int t[2][3] = {{ 1, 2, 1 }, {1, 2, 3}};
    printf("%ld", sizeof(t) / sizeof(t[1][1]));
    return 0;
}
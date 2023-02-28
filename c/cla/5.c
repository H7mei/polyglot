# include <stdio.h>

int main(){
    int i = 10, j = 20, *p, s = 0;
    p = &i;
    i++;
    (*p)++;
    s = i + j + *p;
    printf("%d ", s);
    return 0;
}
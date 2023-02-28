# include <stdio.h>
# include <stdlib.h>

int main(){
    char *p;
    int i;
    p = (char *)malloc(10);
    for (i = 0; i < 10; i++){
        p[i] = 'A' + i;
    }
    printf("%c", *(p+9));
    free(p);
    return 0;
}
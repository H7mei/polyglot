# include <stdio.h>
# include <string.h>

void f(char *s){
    s[1] = '\0';
}

int main(){
    char p1[] = "ABC", p2[] = "XYZ";
    f(p1);
    f(p2);
    printf("%ld", strlen(p1) + strlen(p2));
    return 0;
}
# include <stdio.h>
# include <string.h>

int main(){
    char t[20] = "ABCDEFGHIJK";
    int s = strlen(t);
    t[3] = '\0';
    s = strlen(t);
    printf("%d", s);
    return 0;
}
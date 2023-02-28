# include <stdio.h>
# include <string.h>

int main(){
    char t[20] = "ABCDEFGHIJK";
    int s = strlen(t);
    t[3] = '\0';
    s += strlen(t);
    strcpy(t, "ABCDEF");
    for (int i = 0; i < strlen(t); i++){
        printf("%c\n", t[i]);
    }
    s += strlen(t);
    strcat(t, "ABC");
    s += strlen(t);
    printf("%d", s);
    return 0;
}
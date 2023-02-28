# include <stdio.h>

int main(){
    FILE *f;
    char s[] = "To be or not to be";
    long i;
    f = fopen("f", "w+b");
    fputs(s, f);
    fseek(f, -2, SEEK_END);
    i = ftell(f);
    fclose(f);
    printf("%ld",i);
    return 0;
}
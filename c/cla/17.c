# include <stdio.h>

int main(){
    FILE *f;
    int i;
    f = fopen("f", "wb");
    fwrite(f, 2, 1, f);
    fclose(f);
    f = fopen("f", "rb");
    fseek(f, 0, SEEK_END);
    i = ftell(f);
    fclose(f);
    printf("%d", i);
    return 0;
}
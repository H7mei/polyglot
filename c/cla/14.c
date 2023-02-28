# include <stdio.h>
# include <string.h>

int main(int argc, char *argv[]){
    printf("%ld", argc + strlen(argv[1]));
    return 0;
}
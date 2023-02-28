# include <stdio.h>
# include <stdlib.h>


int main(){

    int i = 1;
    while (i <= 9){
        printf("%d\n", i);
        i++;
    }
    printf("\n");

    int LuCk[] = {1, 2, 3, 4, 5, 6};

    int u;
    for(u = 0; u < 4; u++){        /* disini mengunakan fungsi pengulangan dan array */
        printf("%d\n", LuCk[u]); // lopping maju
    }
    printf("\n");
    int a = 4, p = 0;
    for(p = a;  p > 0 ; p--){ //lopping mundur
        printf("%d\n", LuCk[p]);
    }
    
    return 0;
}

/*

For Loops
secara fungsi keduanya memiliki fungsi yang sama pengulangan
for lebih ringkas
*/
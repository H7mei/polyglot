# include <stdio.h>

int main(){
    int i = 100;
    if (i > 100){
        i -= 100;
    }else if (i >= 0){
        i += 100;
    }else if(i){
        i += 100;
    }else{
        i -= 100;
    }
    printf("%d", i);
    return 0;
}
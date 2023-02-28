# include <stdio.h>

int main(){
    int i = -100, j = 200;
    if(i > 0 && j < 0){
        i++;
    }else if(i < 0 && j < 0){
        i--;
    }else if(i < 0 && j > 0){
        j--;
    }else{
        j--;
    }
    printf("%d", i + j);
    return 0;
}
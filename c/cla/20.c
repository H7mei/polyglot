# include <stdio.h>
int vr = 10;

int fun1(int param){
    int vr =1;
    vr++;
    return vr + param;
}

int main(){
    printf("%d", fun1(1) + fun1(1));
    return 0;
}
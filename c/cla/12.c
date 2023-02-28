# include <stdio.h>

int add(int par){
    par += par;
    return par;
}
int add2(int p1, int p2){
    return p1 + p2;
}

int main(){
    int var = 0;
    var = add2(add(2),add(4));
    var = add2(var,var);
    printf("%d",var);
    return 0;
}
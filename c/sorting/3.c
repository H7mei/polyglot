# include <stdio.h>

void tampilArray(int n, int arr[]){
    int i;
    for (i = 0; i < n; i++){
        printf("%d ", arr[i]);
    }
}

int main(){
    int tabInt[10] = {34, 67, 23, 28, 98, 15, 89, 67, 28, 18};
    int i;
    int temp;
    int tukar;

    do
    {
        tukar = 0;
        for (i = 0; i < (10 - 1); i++){
            if (tabInt[i] > tabInt[i + 1]){
                temp = tabInt[i];
                tabInt[i] = tabInt[i + 1];
                tabInt[i + 1] = temp;
                tukar = 1;
            }   
        }
    } while (tukar == 1);

    tampilArray(10, tabInt);
    return 0;
}
// 317 langkah
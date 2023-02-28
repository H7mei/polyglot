# include <stdio.h>

void tampilArray(int n, int arr[]){
    int i;
    for(i = 0; i < n; i++){
        printf("%d ", arr[i]);
    }
}

int main(){
    int tabInt[10] = {34, 67, 23, 28, 98, 15, 89, 67, 28, 18};
    int i;
    int data_sisip;
    int j;

    for (i = 1; i < 10; i++){
        data_sisip = tabInt[i];
        j = i - 1;
        while((data_sisip < tabInt[j]) && (j >= 0)){
            tabInt[j + 1] = tabInt[j];
            j = j - 1;
        }
        tabInt[j + 1] = data_sisip;
    }
    tampilArray(10, tabInt);
    return 0;
}
// 149 langkah
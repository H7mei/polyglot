# include <stdio.h>

int tabInt[10] = {34, 67, 23, 28, 98, 15, 89, 67, 28, 18};

void quickSortPivotPinggir(int l, int r){
    int i;
    int j;
    int temp;

    i = l;
    j = r;

    do{
        while ((tabInt[i] < tabInt[r]) && (i <= j)){
            i = i + 1;
        }
        while ((tabInt[j] > tabInt[l]) && (i <= j)){
            j = j - 1;
        }
        if(i < j){
            temp = tabInt[i];
            tabInt[i] = tabInt[j];
            tabInt[j] = temp;
            i = i + 1;
            j = j - 1;
        }
    }while (i <= j);

    if (l < j){
        quickSortPivotPinggir(l, j);
    }
    if (i < r){
        quickSortPivotPinggir(i, r);
    }
}

void quickSortPivotTengah(int l, int r){
    int i;
    int j;
    int temp;
    int pivot;

    i = l;
    j = r;
    
    pivot = tabInt[l];

    do{
        while((tabInt[i] < pivot) && (i <= j)){
            i = i + 1;
        }
        while((tabInt[j] > pivot) && (i <= j)){
            j = j - 1;
        }
        if(i <= j){
            temp = tabInt[i];
            tabInt[i] = tabInt[j];
            tabInt[j] = temp;
            i = i + 1;
            j = j - 1;
        }
    }while (i <= j);

    if (l < j){
        quickSortPivotTengah(l, j);
    }
    if (i < r){
        quickSortPivotTengah(i, r);
    }
}

void tampilArray(int n, int arr[]){
    int i;
    for (i = 0; i < n; i++){
        printf("%d ", arr[i]);
    }
}

int main(){
    quickSortPivotPinggir(0, 9);
    // quickSortPivotTengah(0, 9);
    tampilArray(10, tabInt);
    return 0;
}
// 244 langkah (pinggir)
// 241 langkah (tengah)
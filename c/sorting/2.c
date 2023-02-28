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
    int minIndex;
    int j;

    for (i = 0; i < (10 - 1); i++){
      minIndex = i;
      for (j = (i + 1); j < 10; j++){
          if(tabInt[minIndex] > tabInt[j]){
              minIndex = j;
          }
      }
      temp = tabInt[i];
      tabInt[i] = tabInt[minIndex];
      tabInt[minIndex] = temp;
    }
    tampilArray(10, tabInt);
    
    return 0;
}
// 182 langkah
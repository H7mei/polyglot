# include <stdio.h>

int tabInt[10] = {15, 18, 23, 28, 28, 67, 67, 67, 89, 98};

int main(){
  int i;
  int j;
  int bil_cari;
  int k;
  int ketemu;

  i = 0;
  j = 9;
  bil_cari = 67;
  ketemu = 0;

  while ((ketemu == 0) && (i <= j)){
    k = (int)(i + j) / 2;
    if(tabInt[k] == bil_cari){
      ketemu = 1;
      do{
        printf("index ke %d = %d\n", k, tabInt[k]);
        k--;
      } while (tabInt[k] == bil_cari);
    }else{
      if (tabInt[k] > bil_cari){
        j = k - 1;
      }else{
        i = k + 1;
      }
    }
  }
  
  if (ketemu == 1){
    printf("ada dalam table\n");
  }else{
    printf("tidak di temukan");
  }
  
  return 0;
}


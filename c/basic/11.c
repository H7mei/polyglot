# include <stdio.h>

// Pass By Value
void Dua(int num){
  printf("%d\n", num);
}

// pass by reference
void kaliDua(int *num){
  *num = *num * 2;
}

int main(){
  // Pass By Value
  Dua(4);

  // Pass By reference (pointernya)
  int angka = 4;
  kaliDua(&angka);
  printf("%d\n", angka);
  return 0;
}

/* 
perbedaanya di nilainya pas by reference mengunakan pointer
 */
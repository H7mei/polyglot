#include "resistor_color.h"

int color_code(resistor_band_t color){
    return color;
}

resistor_band_t *colors(){
    static resistor_band_t arr[10];
    for(resistor_band_t i = BLACK;i <= WHITE; i++)
        arr[i] = i;
    return arr;
}

int main(){
  printf("%d\n", BLACK);
  printf("%d\n", BROWN);
  printf("%d\n", RED);
  printf("%d\n", ORANGE);
  printf("%d\n", YELLOW);
  printf("%d\n", GREEN);
  printf("%d\n", BLUE);
  printf("%d\n", VIOLET);
  printf("%d\n", GREY);
  printf("%d\n", WHITE);

  return 0;
}
#include "armstrong_numbers.h"

int numberOfDigits(int n){
    int c = 0;
    while(n != 0){
        n = n / 10;
        c++;
    }
    return c;
}
int luck(int n, int e){
    int p = 1;
    while(e > 0){
        p = p * n;
        e--;
    }
    return p;
}
int is_armstrong_number(int n){
    int sum = 0;
    int ndigith = numberOfDigits(n);
    int ncopy = n;
    int digit;
    while(ncopy != 0){
        digit = ncopy % 10;
        ncopy = ncopy / 10;
        sum = sum + luck(digit, ndigith);
    }
    return (sum == n);
}

int main(){
  // tenary operation
  printf("%s\n", is_armstrong_number(10) ? "true" : "false");
  return 0;
}

/* 
source : https://exercism.org/tracks/c/exercises/armstrong-numbers
 */